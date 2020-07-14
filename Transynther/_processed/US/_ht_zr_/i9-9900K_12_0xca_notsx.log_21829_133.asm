.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e7b7, %r8
nop
nop
nop
nop
and $26710, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r8
movaps %xmm3, (%r8)
nop
nop
nop
sub $44722, %rcx
lea addresses_WT_ht+0x89c1, %r12
nop
nop
nop
and %r9, %r9
mov (%r12), %edi
nop
nop
nop
nop
nop
xor $3136, %rcx
lea addresses_WT_ht+0x6793, %rsi
lea addresses_A_ht+0x54f, %rdi
nop
nop
nop
cmp %rax, %rax
mov $42, %rcx
rep movsl
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x1313, %rsi
lea addresses_WT_ht+0x70fb, %rdi
and $53514, %r9
mov $114, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $56833, %r9
lea addresses_WC_ht+0x2913, %rax
sub $59315, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rax
vmovaps %ymm6, (%rax)
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x2d13, %r8
nop
nop
nop
nop
nop
cmp $55867, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x13113, %rsi
lea addresses_UC_ht+0x1ef13, %rdi
nop
xor $32612, %r12
mov $30, %rcx
rep movsb
nop
nop
nop
xor $44076, %r12
lea addresses_WC_ht+0x1a113, %r8
nop
nop
nop
nop
xor $58836, %r12
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
nop
nop
sub $21609, %rdi
lea addresses_normal_ht+0x4273, %rsi
lea addresses_WC_ht+0x5c13, %rdi
nop
nop
nop
nop
add $49186, %r11
mov $67, %rcx
rep movsl
nop
nop
nop
nop
cmp $11756, %rsi
lea addresses_D_ht+0x4913, %rsi
nop
nop
sub $8473, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm6, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0xb913, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $17197, %rsi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'49': 4178, '00': 4589, '44': 13062}
44 44 49 00 44 00 44 44 44 44 00 44 00 44 00 44 00 00 44 00 00 49 49 44 00 44 44 44 00 44 44 00 44 44 49 00 44 44 49 44 44 00 44 44 49 00 49 44 44 00 44 44 00 49 49 49 44 00 00 44 49 00 44 44 44 00 44 49 00 44 00 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 00 49 44 49 44 44 49 44 44 44 44 44 44 44 44 44 00 00 44 44 49 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 49 00 44 44 49 44 49 44 00 44 00 00 44 44 00 44 44 44 44 44 49 00 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 49 44 49 44 00 49 44 44 44 49 49 49 49 44 44 49 44 49 00 44 44 44 44 44 00 44 44 44 44 00 49 44 00 44 44 44 00 44 44 44 44 44 00 44 44 49 00 44 44 00 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 00 49 44 44 44 49 44 49 44 44 44 00 44 44 44 49 00 44 00 49 49 44 00 44 49 44 44 00 44 44 44 49 49 44 44 44 49 49 49 44 44 49 44 44 44 44 49 44 44 44 44 44 49 44 49 44 00 44 49 00 44 49 00 44 44 44 00 00 49 44 44 00 49 44 49 49 00 44 44 44 44 00 44 44 44 44 00 49 44 44 44 44 00 44 44 49 00 44 00 44 00 49 00 44 44 00 44 44 00 49 00 44 44 44 00 44 00 44 49 44 00 49 00 44 49 44 49 44 44 44 44 44 44 44 49 44 00 44 44 44 44 49 44 44 44 44 49 44 49 49 49 00 44 49 44 49 00 44 49 49 44 44 44 49 44 44 49 44 00 49 44 44 44 44 49 00 49 44 44 44 44 44 49 00 44 00 44 44 44 44 44 44 00 44 44 49 00 44 49 44 44 49 44 44 44 49 00 44 44 44 44 00 44 44 44 44 44 44 44 49 00 44 49 49 44 44 44 49 00 49 00 44 44 44 44 44 00 44 44 00 44 44 44 44 00 00 44 00 44 44 44 00 49 44 49 44 44 44 00 49 49 44 00 49 44 44 44 44 44 44 44 44 49 44 49 44 44 00 00 44 44 00 44 44 00 49 44 44 49 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 49 00 44 44 44 49 44 44 44 44 44 44 49 49 49 49 49 49 00 44 49 44 44 49 44 44 44 44 00 49 49 44 44 44 44 49 44 44 44 44 44 49 00 44 44 44 00 44 44 44 00 44 44 00 44 49 00 44 49 00 44 00 49 44 44 00 44 44 44 44 44 49 44 00 44 49 44 44 00 44 44 44 00 44 44 44 44 44 49 44 44 44 00 44 49 49 44 44 49 49 44 44 44 44 49 44 44 00 00 44 44 44 00 44 00 44 49 44 44 44 49 49 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 00 44 49 00 49 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 49 44 44 00 44 44 44 44 44 49 44 49 00 44 44 44 44 00 49 44 44 44 00 44 00 49 44 44 00 49 44 00 44 44 00 44 00 44 44 00 00 44 49 00 44 49 00 49 00 49 49 00 44 00 44 44 00 44 44 44 44 00 00 44 00 49 49 44 49 44 00 44 44 49 49 00 44 44 44 00 44 44 44 44 44 44 44 44 49 44 44 00 44 44 44 44 00 44 00 44 00 44 00 00 44 00 44 44 49 49 44 44 49 44 44 49 49 49 44 49 00 44 44 49 44 44 44 44 49 44 49 49 44 44 49 00 00 49 00 44 00 44 44 44 00 49 44 49 49 44 44 44 00 49 49 00 44 44 44 49 44 49 00 49 44 44 44 44 00 49 44 44 44 49 49 44 44 00 49 44 49 00 44 00 49 44 44 44 44 49 00 44 00 49 49 49 49 49 44 00 44 49 49 44 44 00 44 00 44 44 44 44 49 44 49 44 00 49 44 00 44 44 49 49 00 44 49 49 49 49 44 44 49 00 44 44 44 44 44 00 00 49 44 44 49 44 49 44 44 00 44 49 00 44 44 00 49 00 00 44 44 49 00 49 49 49 00 44 44 44 44 44 00 49 44 49 44 44 44 49 44 00 49 49 49 44 00 49 00 44 44 00 44 44 00 49 44
*/
