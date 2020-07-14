.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rdx
lea addresses_WT_ht+0x4f95, %rax
nop
nop
add $29244, %r10
mov (%rax), %r15
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x197c5, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $23175, %r8
mov (%rdx), %rbx
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0xafc5, %rax
nop
nop
nop
nop
add %rdx, %rdx
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
and $4763, %r15
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x63ff350000000245, %rdx
clflush (%rdx)
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovaps %ymm5, (%rdx)
nop
and $48702, %rdi

// Store
lea addresses_normal+0xf005, %r10
nop
nop
and $29975, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
cmp %rax, %rax

// Store
mov $0xd55, %r15
nop
nop
nop
nop
xor $44513, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $26351, %rax

// Faulty Load
lea addresses_US+0x2645, %rax
nop
xor %r9, %r9
movb (%rax), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
