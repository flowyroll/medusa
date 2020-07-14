.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14c6f, %r9
nop
nop
nop
and %rax, %rax
mov (%r9), %edi
nop
nop
nop
nop
cmp $61443, %r15
lea addresses_D_ht+0x11fdf, %r8
nop
and $15646, %r11
mov (%r8), %r9
nop
nop
nop
nop
nop
and $31488, %r8
lea addresses_D_ht+0x14ddf, %r11
nop
nop
nop
add $35285, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r11)
nop
sub %r15, %r15
lea addresses_WC_ht+0x69a4, %r8
nop
nop
xor $52273, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x7fff, %rax
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
xor $988, %r9
lea addresses_normal_ht+0x10cdf, %r11
nop
xor $9536, %r8
mov (%r11), %ax
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x439f, %rsi
lea addresses_A_ht+0x1d2b7, %rdi
nop
nop
nop
cmp $6034, %r11
mov $49, %rcx
rep movsw
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x47df, %rsi
lea addresses_UC_ht+0xdedf, %rdi
nop
nop
nop
cmp %r11, %r11
mov $9, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_D_ht+0x8fc7, %rsi
lea addresses_WC_ht+0x8b27, %rdi
nop
nop
nop
and %r11, %r11
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
and $49772, %r11
lea addresses_UC_ht+0x1e3df, %rbx
and $6297, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xbbd7, %rsi
lea addresses_WT_ht+0x7ce3, %rdi
nop
nop
nop
xor $3679, %rax
mov $6, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0xd8df, %r15
clflush (%r15)
nop
nop
nop
xor %r9, %r9
mov (%r15), %rax
and $64159, %r8
lea addresses_UC_ht+0x1dd3, %rcx
nop
nop
nop
nop
nop
and $22884, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rcx)
nop
xor %rax, %rax
lea addresses_normal_ht+0x185f, %rsi
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
add $62627, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx

// Store
lea addresses_RW+0x124cf, %rcx
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
sub $29858, %r9

// Faulty Load
mov $0x44b0a00000000bdf, %r14
nop
nop
nop
nop
nop
xor $2008, %rcx
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'44': 3753, '46': 18075, '1f': 1}
44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 44 44 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 44 46 46 46 44 44 46 46 46 46 46 44 44 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 44 44 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 44 46 46 46 46 46 44 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 44 44 44 44 46 46 44 46 46 46 46 46 44 44 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 44 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 44 44 46 46 46 46 44 44 46 46 46 46 46 46 44 46 44 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 44 44 46 44 46 46 46 46 46 44 46 46 46 46 46 44 44 46 46 46 46 46 46 44 46 46 46 44 44 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 44 46 44 46 44 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 44 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 46 44 46 44 44 46 46 44 44 46 46 46 44 44 46 44 44 46 44 46 46 46 46 46 44 46 46 46 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 44 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 44 46 46 44 44 46 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 44 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 44 44 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 44 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46
*/
