.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ba21, %rsi
lea addresses_UC_ht+0x1b79, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $90, %rcx
rep movsl
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x9a61, %rax
nop
nop
nop
nop
nop
inc %rsi
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
xor $61865, %rax
lea addresses_UC_ht+0x1162d, %rcx
nop
nop
nop
nop
nop
dec %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $32202, %rdx
lea addresses_WC_ht+0x122e1, %rsi
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
and %rcx, %rcx
lea addresses_WT_ht+0x2461, %rsi
lea addresses_normal_ht+0xd961, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x6021, %rsi
lea addresses_WC_ht+0x1e9e1, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $66, %rcx
rep movsw
nop
nop
nop
add $14351, %rcx
lea addresses_WC_ht+0xcde1, %rsi
lea addresses_WT_ht+0x1df71, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $21087, %r11
mov $2, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x183a1, %rdx
nop
nop
nop
nop
nop
add $36428, %rcx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
and %rax, %rax
lea addresses_UC_ht+0x9061, %rsi
lea addresses_D_ht+0x12c2a, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x13e61, %rsi
lea addresses_A_ht+0x1a261, %rdi
nop
nop
sub %r8, %r8
mov $93, %rcx
rep movsq
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdx

// Faulty Load
mov $0x3d84240000000a61, %rbp
nop
nop
nop
nop
nop
and %r11, %r11
movaps (%rbp), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
