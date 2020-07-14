.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x938, %rcx
nop
nop
cmp %r13, %r13
movl $0x61626364, (%rcx)
xor %rax, %rax
lea addresses_normal_ht+0x50d8, %rdi
nop
nop
add %r11, %r11
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x7838, %rsi
lea addresses_normal_ht+0xf358, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $61, %rcx
rep movsl
nop
add $43743, %r12
lea addresses_normal_ht+0x9838, %rsi
lea addresses_normal_ht+0x1b5f4, %rdi
nop
nop
sub $36961, %r12
mov $72, %rcx
rep movsw
nop
nop
nop
nop
nop
and $929, %rax
lea addresses_WT_ht+0x1c2cc, %rsi
lea addresses_D_ht+0xc3b8, %rdi
nop
nop
nop
nop
nop
sub $25218, %rax
mov $96, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x11b48, %rsi
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rsi), %cl
cmp %rsi, %rsi
lea addresses_normal_ht+0x1e438, %r13
nop
nop
nop
nop
nop
sub $12951, %rcx
movb (%r13), %dl
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xa6f4, %r13
xor %rax, %rax
mov (%r13), %edx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1b157, %rsi
lea addresses_WC_ht+0x15c38, %rdi
nop
nop
sub $22270, %r11
mov $44, %rcx
rep movsl
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xf738, %r13
nop
add $59962, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
cmp $37958, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_A+0x12c38, %r13
clflush (%r13)
nop
xor %rsi, %rsi
movntdqa (%r13), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'44': 8417, '49': 13412}
49 44 49 49 49 49 44 49 49 44 44 49 49 49 49 49 49 49 44 44 44 49 49 49 49 49 44 44 44 44 44 49 49 44 49 49 44 49 49 49 44 49 49 49 49 44 44 44 49 49 49 44 49 44 49 44 44 49 49 44 49 49 49 49 49 49 44 44 49 49 44 44 49 44 44 49 49 49 49 44 49 49 49 49 44 49 49 44 49 49 49 44 49 44 49 44 44 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 44 49 44 49 49 49 49 44 44 44 44 44 49 49 49 49 44 44 44 44 44 49 44 49 44 49 49 49 49 49 44 44 49 44 44 44 49 44 49 44 49 49 44 44 44 44 44 49 49 44 49 44 49 44 44 49 44 44 49 49 49 44 44 44 44 49 49 44 44 49 49 44 44 44 44 49 49 49 49 49 49 44 49 49 44 49 44 44 49 49 49 49 49 49 49 44 49 49 44 49 44 49 49 44 44 49 44 49 49 49 49 44 49 44 49 44 49 49 49 49 49 49 49 44 44 49 44 49 49 49 49 44 49 49 49 49 49 44 49 44 44 49 44 49 49 49 49 44 49 49 44 49 44 49 49 49 49 49 49 49 44 49 49 44 44 44 49 49 44 44 49 49 49 44 44 49 49 49 49 44 44 49 44 49 44 49 44 49 49 49 49 49 49 44 49 49 49 44 44 44 44 49 49 44 44 49 44 49 49 49 49 49 49 44 49 49 49 49 44 49 44 44 49 44 49 44 44 49 49 44 49 49 49 49 44 49 49 49 44 44 44 44 49 49 44 49 49 44 49 49 44 49 49 49 49 44 49 49 44 44 49 44 49 49 44 49 49 49 49 44 49 44 44 49 49 49 44 44 49 49 49 44 44 49 49 49 49 44 49 49 44 44 49 49 44 49 49 44 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 44 49 49 44 44 49 44 49 49 49 44 44 49 44 49 49 44 49 44 44 49 44 44 49 49 49 49 49 49 49 49 44 49 44 44 49 44 49 44 49 49 49 44 44 44 44 49 44 49 44 44 44 49 49 49 44 44 49 49 44 49 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 44 49 49 44 44 49 49 49 49 49 44 44 49 49 49 49 49 44 44 49 44 49 49 49 49 49 44 49 49 49 44 49 49 49 44 49 49 44 44 49 49 44 49 49 44 44 49 49 49 49 44 44 49 44 44 49 49 49 44 44 49 49 49 44 44 49 49 44 44 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 44 44 49 49 49 44 44 49 44 49 49 44 49 44 49 49 44 49 49 49 49 44 49 49 49 44 49 44 49 49 44 49 44 44 44 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 44 44 49 44 49 44 49 44 49 44 44 44 44 44 49 49 49 49 49 49 49 49 49 49 44 44 44 49 49 49 44 49 44 49 49 44 44 49 49 49 44 49 49 49 49 49 44 49 44 49 49 49 49 49 44 44 44 44 44 44 44 44 49 44 49 49 49 44 44 49 44 49 44 44 44 49 49 44 44 44 49 49 49 44 49 44 49 49 49 49 49 49 49 44 49 49 49 44 49 49 44 44 44 49 49 49 49 49 49 49 44 49 49 44 49 44 44 49 49 49 44 49 49 44 49 44 44 49 49 49 49 49 44 49 49 44 49 49 44 49 44 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 44 49 44 44 49 44 49 49 44 49 44 49 49 49 49 44 49 44 49 49 49 44 44 44 49 49 44 49 49 44 49 49 44 44 49 44 44 44 44 49 49 49 49 49 49 44 44 49 44 49 49 49 49 49 49 49 44 44 44 44 49 49 49 49 44 49 49 49 49 44 44 49 49 44 44 49 44 44 44 44 49 49 49 49 49 44 49 44 44 49 44 49 49 49 49 44 44 44 49 44 49 49 49 44 44 49 49 49 44 44 49 49 49 49 44 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 44 44 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 44 44 49 49 49 49 44 44 49 49 49 49 44 44 44 49 49 49 49 49 49 44 49 44 44 44 44 44 44 49
*/
