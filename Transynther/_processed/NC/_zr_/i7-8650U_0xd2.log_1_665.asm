.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1850a, %rsi
lea addresses_normal_ht+0x2b0a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r12
mov $47, %rcx
rep movsq
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1eae2, %rsi
nop
xor $52228, %rcx
movl $0x61626364, (%rsi)
nop
add %rdi, %rdi
lea addresses_A_ht+0x1e40a, %rbp
clflush (%rbp)
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
sub $27721, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x1eaca, %rsi
mov $0x5f973a0000000b0a, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $32, %rcx
rep movsw
cmp %rdx, %rdx

// Store
lea addresses_WT+0x11f0a, %rdx
sub %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
and $30690, %rcx

// Store
lea addresses_UC+0x430a, %rdi
nop
nop
nop
add $34528, %r15
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor $17001, %rcx

// Store
lea addresses_D+0x1948a, %rbx
cmp %r14, %r14
movb $0x51, (%rbx)
xor $37636, %rdi

// Faulty Load
mov $0x5f973a0000000b0a, %rsi
nop
nop
nop
nop
nop
cmp $55972, %r15
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'00': 1}
00
*/
