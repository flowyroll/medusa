.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x9cc1, %rsi
lea addresses_normal_ht+0x9, %rdi
nop
nop
nop
nop
and $33005, %r14
mov $65, %rcx
rep movsb
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x8361, %rsi
lea addresses_UC_ht+0x15ec1, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
mov $99, %rcx
rep movsb
nop
nop
nop
nop
and $34255, %rbx
lea addresses_UC_ht+0x1cf41, %rdx
nop
nop
nop
nop
nop
add $12652, %rsi
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rcx
nop
and %rdi, %rdi
lea addresses_A_ht+0x1c8d1, %rsi
lea addresses_WC_ht+0x157b1, %rdi
nop
nop
nop
nop
add $56367, %rbp
mov $77, %rcx
rep movsq
nop
nop
inc %rdx
lea addresses_A_ht+0x10ec1, %r14
nop
nop
nop
nop
nop
add %rbp, %rbp
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x6c1, %rdx
inc %r14
movl $0x61626364, (%rdx)
nop
add %rbx, %rbx
lea addresses_A_ht+0xbec1, %rsi
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm0, (%rsi)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x15331, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $35367, %rcx
movw $0x6162, (%rdx)
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x1e3f7, %r9
and $1530, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
and %rdi, %rdi

// Faulty Load
lea addresses_US+0xdec1, %rcx
nop
nop
dec %rbx
movaps (%rcx), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'ab': 1, '48': 19, '20': 4, '49': 7, '00': 17761, '45': 3995, '47': 41, '77': 1}
00 45 00 00 00 45 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 00 00 00 45 45 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 45 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 45 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 47 00 00 00 45 00 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 47 00 00 45 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 45 45 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 45 45 45
*/
