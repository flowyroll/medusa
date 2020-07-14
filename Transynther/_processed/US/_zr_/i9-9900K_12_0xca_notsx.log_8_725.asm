.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2b27, %rsi
lea addresses_WC_ht+0x1b33f, %rdi
nop
and $32263, %r15
mov $65, %rcx
rep movsq
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0xbac7, %rsi
inc %rdx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x7627, %rbx
cmp %r8, %r8
mov (%rbx), %rcx
nop
nop
cmp $55069, %rsi
lea addresses_normal_ht+0xf957, %rsi
lea addresses_UC_ht+0xf6bf, %rdi
nop
nop
nop
cmp $38962, %r11
mov $37, %rcx
rep movsq
nop
nop
and $26176, %rbx
lea addresses_normal_ht+0x1e427, %rsi
lea addresses_D_ht+0x17d53, %rdi
cmp %rbx, %rbx
mov $21, %rcx
rep movsw
nop
nop
nop
xor $48576, %r15
lea addresses_UC_ht+0x16127, %rsi
lea addresses_normal_ht+0x123e7, %rdi
clflush (%rsi)
nop
nop
nop
xor $57297, %r15
mov $118, %rcx
rep movsb
and $31671, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rdi

// Faulty Load
lea addresses_US+0x19427, %r14
nop
add $54138, %r11
mov (%r14), %edi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
