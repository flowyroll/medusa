.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c6f4, %rbp
nop
nop
nop
nop
nop
sub %rax, %rax
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
cmp $61288, %rsi
lea addresses_WT_ht+0xd742, %rax
and %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x40f4, %rcx
nop
nop
nop
nop
inc %rbp
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
xor $37826, %r15
lea addresses_WT_ht+0x14b04, %r15
nop
nop
nop
nop
nop
dec %rdi
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
xor $25450, %rdi
lea addresses_A_ht+0x67a4, %rcx
nop
nop
nop
nop
nop
sub $1464, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
xor $37707, %rbp
lea addresses_WT_ht+0x1e6f4, %rdi
nop
nop
nop
and %rcx, %rcx
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
xor $64780, %rbp
lea addresses_WC_ht+0x1ac25, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
and $48123, %rdi
lea addresses_A_ht+0x106f4, %rsi
lea addresses_normal_ht+0x4bc7, %rdi
cmp %rbp, %rbp
mov $6, %rcx
rep movsl
nop
nop
nop
nop
cmp $63120, %rdi
lea addresses_WC_ht+0x117f4, %rsi
lea addresses_A_ht+0x12f4, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x154, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x14a6c, %rax
nop
nop
xor %r13, %r13
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
add $26266, %rcx
lea addresses_D_ht+0x1e87b, %rsi
and %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x8f4, %rsi
lea addresses_UC_ht+0x1b74, %rdi
nop
nop
nop
lfence
mov $34, %rcx
rep movsw
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x10cf4, %r15
nop
nop
nop
nop
and %rcx, %rcx
mov (%r15), %rsi
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax

// Faulty Load
lea addresses_A+0x16ef4, %r11
nop
nop
nop
cmp %r8, %r8
mov (%r11), %r9d
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'35': 188}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
