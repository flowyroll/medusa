.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15a79, %rsi
lea addresses_WC_ht+0x5e19, %rdi
nop
nop
nop
nop
xor $2004, %rax
mov $57, %rcx
rep movsw
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x1d879, %rsi
lea addresses_WC_ht+0x10299, %rdi
nop
nop
dec %r14
mov $98, %rcx
rep movsl
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x20f9, %rdx
cmp $7800, %r10
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
add $28524, %r14
lea addresses_D_ht+0xabe, %rcx
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %rcx
movaps %xmm0, (%rcx)
nop
nop
nop
sub $13751, %rdi
lea addresses_normal_ht+0xc79, %r14
nop
nop
nop
xor $63700, %rax
mov (%r14), %si
and %rax, %rax
lea addresses_WT_ht+0x7839, %rax
nop
nop
nop
nop
and %rcx, %rcx
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x3279, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'45': 1060, '00': 293, '49': 26}
45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 00 45 00 45 45 45 45 00 49 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 49 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 49 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 00 00 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 00 00 45 00 00 45 45 45 45 45 49 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 49 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 49 45 45 45 00 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 00 00 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 00 45 00 49 00 45 45 45 45 00 45 00 49 45 45 45 00 00 45 45 45 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 49 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 45 45 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 49 00 45 00 00 45 45 00 45 45 00 45 49 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 00 00 45 45 00 45 45 49 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 00 00 00 45 00 45 00 45 00 45 45 45 45 00 45 45 00 00 45 00 00 00 45 45 45 00 45 45 45 45 00 45 49 45 45 00 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45
*/
