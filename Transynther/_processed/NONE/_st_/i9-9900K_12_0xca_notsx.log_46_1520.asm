.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5827, %r15
nop
nop
nop
nop
mfence
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
sub $21729, %r12
lea addresses_D_ht+0x1e858, %rcx
xor %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
sub $24957, %r12
lea addresses_WC_ht+0xfe4b, %rcx
cmp $27805, %r13
movb $0x61, (%rcx)
inc %r8
lea addresses_normal_ht+0x1be27, %r12
clflush (%r12)
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x14627, %r12
clflush (%r12)
nop
sub %rcx, %rcx
mov (%r12), %edx
nop
nop
add $63661, %r8
lea addresses_WT_ht+0x6994, %rsi
lea addresses_UC_ht+0xc367, %rdi
clflush (%rdi)
nop
nop
and %r12, %r12
mov $13, %rcx
rep movsw
and %r10, %r10
lea addresses_D_ht+0x57a7, %rdi
nop
nop
nop
nop
nop
and $58030, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdi)
nop
sub $38072, %r10
lea addresses_UC_ht+0x7a27, %rsi
lea addresses_A_ht+0x1a7a7, %rdi
lfence
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x10627, %rsi
lea addresses_UC+0x457, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $114, %rcx
rep movsq
nop
nop
add $10556, %rdx

// Store
lea addresses_D+0x5fa7, %r10
cmp $9077, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
and $45245, %rdi

// REPMOV
lea addresses_RW+0x1be27, %rsi
lea addresses_A+0xa627, %rdi
clflush (%rsi)
nop
dec %rax
mov $106, %rcx
rep movsw
nop
nop
nop
nop
cmp $59199, %r10

// Store
lea addresses_RW+0x1d657, %r11
nop
nop
nop
add $35597, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r11)
nop
and $24679, %rcx

// Load
lea addresses_UC+0x1eb15, %r11
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r11), %r10w
nop
nop
cmp $31116, %rcx

// Store
lea addresses_PSE+0x1d37, %rax
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rax)
nop
nop
xor $12067, %r12

// Store
lea addresses_normal+0x35a7, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%r11)
sub %rcx, %rcx

// Store
mov $0x129e1f0000000e7d, %rax
nop
inc %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_A+0xa627, %rsi
xor $53946, %rax
mov (%rsi), %edx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_RW'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'32': 46}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
