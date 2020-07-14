.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x155c4, %rdi
nop
nop
nop
dec %r15
movl $0x61626364, (%rdi)
nop
and $62261, %r13
lea addresses_UC_ht+0x142c4, %rax
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x6e84, %rdx
nop
nop
nop
nop
cmp $37129, %r13
movb (%rdx), %al
inc %r13
lea addresses_D_ht+0x132a4, %rdx
clflush (%rdx)
sub %rsi, %rsi
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
xor $45632, %r15
lea addresses_normal_ht+0x18244, %rsi
lea addresses_WT_ht+0xe230, %rdi
nop
nop
nop
xor %r14, %r14
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $46757, %r15
lea addresses_WT_ht+0x86c4, %rsi
lea addresses_WT_ht+0x35a4, %rdi
nop
and $28760, %rdx
mov $114, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0xd254, %rsi
lea addresses_D_ht+0xb695, %rdi
nop
nop
nop
sub %r13, %r13
mov $60, %rcx
rep movsw
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0xc6c4, %rdi
and $39922, %r15
mov (%rdi), %rsi
nop
dec %r15
lea addresses_A_ht+0x1244, %rcx
cmp %rax, %rax
mov (%rcx), %r15
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x46c8, %rsi
lea addresses_UC_ht+0xc8c4, %rdi
nop
nop
nop
nop
nop
xor $50868, %r13
mov $10, %rcx
rep movsw
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x4ac4, %r14
cmp %r11, %r11
mov (%r14), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'00': 6}
00 00 00 00 00 00
*/
