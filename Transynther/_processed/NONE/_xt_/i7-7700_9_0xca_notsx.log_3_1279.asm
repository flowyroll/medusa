.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xbe95, %r10
nop
nop
nop
sub $27555, %rdx
movb (%r10), %r15b
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0xc109, %rsi
lea addresses_D_ht+0x11509, %rdi
nop
cmp $44231, %rbx
mov $85, %rcx
rep movsw
nop
nop
and $58680, %r8
lea addresses_WT_ht+0x9d89, %rsi
nop
nop
nop
add %r8, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x2609, %r10
nop
cmp $62549, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x13967, %rsi
nop
nop
nop
nop
sub $2184, %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x15c09, %r10
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r10)
add $26345, %rdx
lea addresses_D_ht+0x15b9, %rbx
nop
nop
nop
nop
inc %r15
movb (%rbx), %dl
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x6459010000000dad, %r10
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_UC+0x12c9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%rdi)
sub $23762, %r15

// Load
lea addresses_WC+0x5fa9, %r10
nop
nop
add %r8, %r8
movb (%r10), %al
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xb3a9, %rcx
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
and $61865, %rax

// Load
lea addresses_WT+0xb989, %r10
nop
cmp $63428, %r15
movntdqa (%r10), %xmm7
vpextrq $0, %xmm7, %rcx
nop
cmp $22986, %r9

// Faulty Load
lea addresses_WT+0x10b89, %rax
clflush (%rax)
xor $4470, %r8
movb (%rax), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'39': 3}
39 39 39
*/
