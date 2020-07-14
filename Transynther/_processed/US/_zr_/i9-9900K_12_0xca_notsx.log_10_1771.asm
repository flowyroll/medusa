.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11bfe, %rbx
nop
nop
nop
nop
add $54691, %rdi
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
cmp $54376, %r12
lea addresses_normal_ht+0x1b5ae, %r13
nop
nop
nop
nop
xor $751, %rdi
mov (%r13), %ecx
nop
nop
nop
nop
add $15078, %r8
lea addresses_WC_ht+0x87ae, %rbx
nop
nop
nop
nop
xor $27495, %rcx
movb (%rbx), %r8b
nop
nop
nop
sub $10189, %rcx
lea addresses_D_ht+0xfbae, %rsi
lea addresses_normal_ht+0x11d0c, %rdi
and %r14, %r14
mov $8, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1174e, %rsi
lea addresses_WT_ht+0x131ee, %rdi
clflush (%rdi)
and $29868, %r12
mov $75, %rcx
rep movsw
nop
nop
add %r8, %r8
lea addresses_A_ht+0x86ae, %r13
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%r13)
nop
nop
nop
cmp $33356, %r12
lea addresses_WT_ht+0x45be, %r13
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r13), %r12w
nop
nop
sub $64263, %rsi
lea addresses_A_ht+0xbc37, %rcx
nop
nop
and $64763, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and $45535, %r8
lea addresses_UC_ht+0x27ae, %rcx
nop
nop
and %rdi, %rdi
movw $0x6162, (%rcx)
xor %r13, %r13
lea addresses_UC_ht+0x416e, %rdi
nop
nop
cmp $49043, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rdi
vmovaps %ymm6, (%rdi)
dec %r8
lea addresses_UC_ht+0x11130, %r8
nop
nop
dec %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add $9126, %r8
lea addresses_WC_ht+0x4bae, %r12
nop
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xa4ea, %r8
nop
nop
xor $30482, %rdi
movl $0x61626364, (%r8)
nop
nop
nop
cmp $24302, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x1ebae, %r14
nop
nop
nop
nop
nop
xor $43263, %rbx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
