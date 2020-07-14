.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17c78, %r12
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r12), %r14w
nop
nop
sub $44364, %r12
lea addresses_WT_ht+0xc1a8, %r12
nop
nop
nop
nop
nop
cmp $36174, %r13
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %rax
nop
cmp $26843, %r13
lea addresses_D_ht+0x174a8, %rsi
lea addresses_WC_ht+0xdfa8, %rdi
nop
nop
sub %rax, %rax
mov $23, %rcx
rep movsw
nop
nop
nop
add $24935, %r14
lea addresses_WC_ht+0xb3a8, %r12
and %rbx, %rbx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xf9a8, %rdi
nop
cmp $13491, %rbx
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
dec %rcx
lea addresses_normal_ht+0x13788, %rsi
lea addresses_UC_ht+0xfba8, %rdi
nop
nop
nop
nop
sub $50210, %r14
mov $102, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x13a8, %r14
nop
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x9bc0, %rsi
lea addresses_WT_ht+0x3fe0, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $11930, %rax
mov $111, %rcx
rep movsw
nop
nop
nop
sub $51872, %rcx
lea addresses_WC_ht+0x83a8, %rbx
clflush (%rbx)
nop
and %rcx, %rcx
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0x16fa8, %r13
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r13)
nop
nop
and %r13, %r13

// Faulty Load
mov $0x1687f70000000ba8, %rbp
nop
nop
nop
nop
sub $41420, %r9
movntdqa (%rbp), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 4397, '44': 15219, '48': 15, '46': 35, '49': 2150, '47': 13}
00 44 44 44 49 49 00 44 44 44 49 49 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 44 44 49 49 00 44 44 44 49 49 49 49 00 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 49 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 47 44 44 44 44 44 49 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 49 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 00 44 44 44 44 49 49 49 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 49 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 49 49 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 00 44 44 44 44 44 00 49 00 44 44 44 00 00 00 44 44 44 44 44 00 49 44 44 44 44 44 44 44 44 00 00 44 44 00 49 44 44 44 44 49 49 44 44 44 44 44 00 00 00 44 44 44 44 49 49 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 00 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 49 44 44 44 44 49 49 49 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 49 49 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 00 44 44 44 49 44 00 44 44 44 49 49 49 44 44 44 49 49 00 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 00 49 49 44 44 44 49 49 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 49 49 44 44 44 44 49 49 44 44 44 44 00 00 44 44 44 49 49 46 44 44 44 44 44 44 00 44 44 44 44 44 44 49 49 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 49 49 48 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 49 49 44 44 44 00 00 00 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 49 49 44 44 44 44 44 00 00 00 44 44 44 44 44 44 49 49 44 44 44 44 44 44 49 49 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 00 49 44 44 44 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 44 44 44 49 00 44 44 44 44 00 00 00 44 44 44 49 49 44 44 44 44 00 00 00 44 44 44 44 44 00 44 00 00 44 44 49 49 49 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 49 44 44 44 44 44 44 49 49 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 00 49 46 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 49 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 49 46 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 49 44 44 44 44 44 44 00 49 44 44 44 44 44 00 44 44 44 49 49 44 44 44 44 44 44 44
*/
