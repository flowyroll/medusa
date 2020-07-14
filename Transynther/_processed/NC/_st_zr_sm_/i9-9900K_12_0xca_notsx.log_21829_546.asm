.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x4fbc, %r14
cmp $275, %r15
movb (%r14), %r12b
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1e71, %rsi
lea addresses_normal_ht+0x16ed1, %rdi
nop
nop
nop
nop
nop
cmp $21960, %r15
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $11916, %r15
lea addresses_A_ht+0x1b771, %rdi
cmp %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
cmp $39725, %rdi
lea addresses_UC_ht+0x1e671, %r14
xor $58584, %r12
mov (%r14), %r11d
add $56694, %rcx
lea addresses_A_ht+0x147b1, %rsi
nop
nop
nop
xor $21, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x11841, %rcx
nop
nop
xor $62132, %r12
mov (%rcx), %rsi
nop
dec %r14
lea addresses_normal_ht+0x10071, %rsi
lea addresses_WC_ht+0x8ef1, %rdi
add %rdx, %rdx
mov $3, %rcx
rep movsl
and %r12, %r12
lea addresses_normal_ht+0x16071, %r15
clflush (%r15)
nop
nop
nop
add $56506, %rsi
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x3771, %rdi
nop
nop
nop
nop
nop
xor $3759, %rcx
movl $0x61626364, (%rdi)
and %rsi, %rsi
lea addresses_D_ht+0x41fe, %r15
lfence
mov (%r15), %esi
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x2a2d, %r9
nop
nop
add $39683, %rax
movw $0x5152, (%r9)
nop
nop
dec %rbp

// REPMOV
lea addresses_normal+0x8271, %rsi
lea addresses_D+0xf1b1, %rdi
nop
nop
nop
nop
nop
xor $144, %rdx
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
mfence

// Load
lea addresses_normal+0x7fed, %rcx
clflush (%rcx)
nop
nop
and %rsi, %rsi
mov (%rcx), %r15w
nop
nop
nop
nop
inc %r15

// Load
lea addresses_normal+0x1c585, %r8
cmp $29353, %rdi
movb (%r8), %dl
nop
nop
nop
nop
nop
add %r8, %r8

// Store
mov $0x6c2cb70000000271, %r9
nop
cmp $43652, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r9)
nop
nop
xor $1219, %rdx

// Store
lea addresses_D+0x113b9, %rsi
sub %rcx, %rcx
movb $0x51, (%rsi)
and %r9, %r9

// Store
lea addresses_A+0x8631, %rax
nop
nop
xor %r15, %r15
movb $0x51, (%rax)
sub %r9, %r9

// Store
lea addresses_PSE+0x11211, %rdi
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x10fd5, %rax
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rax)
nop
nop
nop
sub $15684, %rdi

// Faulty Load
mov $0x6c2cb70000000271, %rcx
nop
nop
and %r8, %r8
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'00': 7532, '58': 14297}
58 00 00 00 58 58 00 58 58 00 58 00 58 00 58 00 58 58 58 58 00 00 00 58 58 58 58 58 00 00 00 58 58 00 00 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 00 58 00 58 00 00 58 00 00 58 58 00 00 00 58 58 58 00 58 00 58 00 00 58 58 00 58 58 00 00 58 00 00 00 58 58 00 00 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 00 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 00 00 00 58 58 58 58 58 00 58 00 00 00 58 00 58 58 00 58 00 00 00 58 58 58 00 58 00 00 58 00 00 00 00 58 00 58 58 58 00 58 58 00 58 58 58 00 00 58 00 58 00 58 00 58 58 58 58 58 00 00 00 58 00 00 58 58 00 58 00 00 00 58 58 58 00 00 58 58 58 58 00 00 58 58 00 58 58 00 00 00 58 58 00 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 00 00 58 00 58 00 58 00 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 00 00 00 58 00 58 00 58 58 00 58 00 58 00 00 58 58 00 58 58 58 58 00 58 58 00 00 00 58 00 58 58 58 00 58 58 00 00 00 58 00 58 58 58 00 58 00 58 00 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 00 58 00 58 00 58 58 00 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 00 00 58 00 00 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 00 00 00 00 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 58 00 58 00 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 00 58 00 58 58 00 00 58 00 58 58 58 58 58 58 00 00 00 58 00 00 58 00 00 58 00 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 00 58 00 58 00 58 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 00 58 58 00 00 00 58 58 58 00 00 58 58 00 00 58 00 58 00 58 58 58 00 00 00 58 00 58 58 00 00 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 00 00 58 00 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 00 58 58 00 00 58 58 00 00 00 58 58 58 00 58 00 58 00 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 00 00 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 00 00 00 58 00 58 58 58 00 00 00 00 00 58 00 58 58 00 00 00 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 00 58 58 58 00 00 58 58 00 58 00 00 58 58 58 00 00 58 58 00 58 00 58 00 58 58 00 58
*/
