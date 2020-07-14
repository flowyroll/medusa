.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17a5a, %rbx
nop
nop
cmp $51913, %r15
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
sub $38561, %rdx
lea addresses_normal_ht+0x9f6a, %r14
nop
nop
nop
dec %r10
movb $0x61, (%r14)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0xfcfa, %r14
nop
nop
and $45297, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
and $23323, %rbx
lea addresses_WC_ht+0xcc6a, %r15
and $59182, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
add $63365, %rax
lea addresses_WC_ht+0x10627, %rax
nop
nop
and $10420, %rbx
mov (%rax), %r14d
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1226a, %rdx
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %rdx
movntdq %xmm7, (%rdx)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1da6a, %rsi
lea addresses_normal_ht+0x10ce, %rdi
nop
and %rax, %rax
mov $17, %rcx
rep movsw
cmp $27310, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdx

// Store
lea addresses_A+0xca6a, %rax
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rax)
nop
cmp %r13, %r13

// Faulty Load
lea addresses_US+0xa26a, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r13d
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'00': 7}
00 00 00 00 00 00 00
*/
