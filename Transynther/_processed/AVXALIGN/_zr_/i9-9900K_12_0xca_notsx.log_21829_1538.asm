.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x640b, %rsi
lea addresses_D_ht+0x7b8b, %rdi
nop
nop
nop
nop
add $19386, %rbx
mov $19, %rcx
rep movsq
nop
dec %r12
lea addresses_A_ht+0x1760b, %rsi
lea addresses_WC_ht+0xdb8b, %rdi
inc %r9
mov $86, %rcx
rep movsb
nop
and $19490, %rbx
lea addresses_A_ht+0x267b, %rsi
lea addresses_UC_ht+0x986b, %rdi
sub %r13, %r13
mov $81, %rcx
rep movsw
nop
nop
xor $31303, %r9
lea addresses_A_ht+0xd88b, %rcx
nop
nop
nop
nop
nop
add $59288, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
and $63443, %rdi
lea addresses_WT_ht+0x1138b, %rbx
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rbx)
inc %rcx
lea addresses_UC_ht+0xd82b, %r13
nop
xor %rbx, %rbx
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
cmp %r13, %r13
lea addresses_UC_ht+0x358b, %rsi
lea addresses_A_ht+0x1408b, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $19426, %r10
mov $21, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0xfb8b, %rsi
lea addresses_UC_ht+0x177dd, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $12, %rcx
rep movsw
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0xee0b, %r12
nop
nop
nop
nop
nop
sub $46915, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x258b, %r12
nop
nop
sub $65298, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
sub $34061, %rbx
lea addresses_UC_ht+0x1b3b3, %rdi
nop
nop
nop
nop
add %r12, %r12
mov (%rdi), %r13d
nop
inc %r13
lea addresses_WT_ht+0x688b, %rcx
nop
add $30546, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rcx
vmovaps %ymm6, (%rcx)
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x1a3fb, %rdi
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%rdi)
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Faulty Load
mov $0x76cf4e000000038b, %r14
nop
add %r9, %r9
mov (%r14), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
