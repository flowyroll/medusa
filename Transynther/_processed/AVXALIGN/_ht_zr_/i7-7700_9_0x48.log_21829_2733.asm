.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16573, %rsi
lea addresses_WC_ht+0x140f3, %rdi
nop
nop
nop
nop
xor $36310, %r11
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1a643, %rsi
lea addresses_WC_ht+0x953, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $121, %rcx
rep movsb
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x1ce73, %r10
nop
nop
sub $42317, %r12
movw $0x6162, (%r10)
nop
and $64553, %rsi
lea addresses_WC_ht+0x1ef1f, %rcx
nop
nop
nop
nop
xor %r11, %r11
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
add $52003, %rcx
lea addresses_WT_ht+0x15b73, %r15
add %rcx, %rcx
movl $0x61626364, (%r15)
xor %rcx, %rcx
lea addresses_D_ht+0x1cd73, %r15
nop
nop
nop
cmp $53559, %rdi
movb $0x61, (%r15)
nop
nop
nop
add $7755, %r12
lea addresses_normal_ht+0x14c87, %rcx
nop
nop
inc %r10
movb (%rcx), %r15b
nop
nop
nop
nop
xor $53349, %rcx
lea addresses_normal_ht+0x363, %rdi
nop
nop
nop
nop
xor $64257, %r15
mov (%rdi), %r12d
nop
nop
inc %rsi
lea addresses_WC_ht+0x1dfb3, %r12
nop
nop
add %r11, %r11
mov (%r12), %edi
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x18f13, %rsi
lea addresses_D_ht+0x11df3, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $22, %rcx
rep movsw
nop
nop
nop
nop
and $49248, %rdi
lea addresses_D_ht+0xd573, %rdi
nop
xor $29862, %r15
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
dec %rdi
lea addresses_WT_ht+0xe773, %rsi
lea addresses_WT_ht+0x14474, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $71, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_normal_ht+0x1a073, %rsi
lea addresses_D_ht+0x13273, %rdi
nop
nop
nop
nop
xor $12767, %rbx
mov $70, %rcx
rep movsb
nop
sub $20373, %rbx
lea addresses_WT_ht+0x73, %rsi
lea addresses_A_ht+0x127e3, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $77, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x14704, %rdi
cmp $55465, %r15
mov (%rdi), %rcx
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x10e0b, %rdi
inc %r13
movl $0x51525354, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x12e5b, %rdi
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rdi)
cmp $20682, %rdx

// Store
lea addresses_A+0x1e843, %rdx
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdx)
sub %rsi, %rsi

// Store
lea addresses_UC+0x1f573, %rsi
and $3355, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
xor $281, %rbp

// Faulty Load
lea addresses_A+0x1cd73, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $8460, %rdx
vmovaps (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'49': 19402, '44': 34, '45': 510, '46': 1859, '00': 24}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 45 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 45 49 49 49 49 49 49 49 49 49 49 46 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 46 49 49 49 49 49 49 49 46 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 45 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 46 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 46 49 49 46 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 46 49 49 49 49 49 49 49 46 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 45 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 46 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 45 49 49 49 49 49 46 45 49 49 49 46 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49
*/
