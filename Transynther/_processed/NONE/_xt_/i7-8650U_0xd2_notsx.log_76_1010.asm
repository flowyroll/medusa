.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4cdf, %r11
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r11)
nop
cmp $7035, %r10
lea addresses_WC_ht+0x15241, %rsi
lea addresses_D_ht+0x1d677, %rdi
nop
nop
nop
nop
xor $7924, %rdx
mov $37, %rcx
rep movsl
sub $56206, %rsi
lea addresses_A_ht+0x18897, %rcx
nop
nop
nop
nop
cmp $15934, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx

// Store
lea addresses_D+0x26f7, %r13
nop
inc %rax
movb $0x51, (%r13)
nop
nop
dec %r11

// Faulty Load
lea addresses_WT+0x9377, %rbx
nop
nop
and %r15, %r15
movb (%rbx), %r12b
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'39': 76}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
