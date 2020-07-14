.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15058, %r15
nop
nop
and $29711, %r14
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
mfence
lea addresses_WT_ht+0x1ec58, %r13
and %r8, %r8
movl $0x61626364, (%r13)
nop
add $7909, %r14
lea addresses_normal_ht+0xfe5, %rsi
lea addresses_WC_ht+0x6858, %rdi
sub $53542, %r12
mov $40, %rcx
rep movsw
nop
nop
nop
nop
sub $24126, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x10018, %rbx
nop
and $45816, %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
xor $53649, %rcx

// Store
lea addresses_WC+0x6858, %rax
nop
nop
nop
nop
nop
and $1669, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movntdq %xmm2, (%rax)
nop
nop
nop
add %rdi, %rdi

// Store
mov $0xce7, %rcx
sub $49249, %r14
movw $0x5152, (%rcx)
cmp $4637, %r9

// Store
mov $0xf8, %rax
nop
nop
nop
nop
and $57952, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movaps %xmm6, (%rax)
and $26443, %rdi

// Store
lea addresses_WC+0x521c, %rbx
nop
nop
nop
cmp $41940, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovntdq %ymm3, (%rbx)
nop
sub %r12, %r12

// Faulty Load
mov $0x4ec7c70000000858, %rbx
nop
nop
xor $2756, %rdi
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
