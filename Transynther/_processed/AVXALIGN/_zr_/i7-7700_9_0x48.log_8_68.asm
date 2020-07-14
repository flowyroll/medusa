.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e667, %rsi
lea addresses_WT_ht+0x6b67, %rdi
nop
nop
and $26883, %rdx
mov $86, %rcx
rep movsb
sub $21619, %r11
lea addresses_WC_ht+0x92d2, %rbx
nop
nop
nop
nop
sub $33728, %rdx
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
add $44497, %rbx
lea addresses_UC_ht+0x18344, %rsi
add %r12, %r12
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
xor $5690, %rbx
lea addresses_A_ht+0x1a667, %rsi
lea addresses_WC_ht+0x14a87, %rdi
cmp %r8, %r8
mov $23, %rcx
rep movsq
nop
add $40390, %r8
lea addresses_D_ht+0x17627, %rcx
inc %rdi
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x13c50, %rsi
lea addresses_normal_ht+0x8a67, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $95, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xed97, %rsi
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
inc %r8
lea addresses_A_ht+0x7767, %rdx
nop
xor %rsi, %rsi
mov (%rdx), %di
nop
nop
nop
nop
cmp $42082, %rbx
lea addresses_normal_ht+0x9327, %rsi
lea addresses_UC_ht+0x6d67, %rdi
clflush (%rdi)
nop
nop
cmp %r11, %r11
mov $3, %rcx
rep movsl
inc %rbx
lea addresses_D_ht+0x667, %rbx
nop
nop
nop
dec %rcx
mov (%rbx), %r11w
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x13467, %r12
xor $25548, %rsi
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rdx

// Faulty Load
mov $0x267, %r12
nop
nop
nop
nop
nop
add %r14, %r14
mov (%r12), %edx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
