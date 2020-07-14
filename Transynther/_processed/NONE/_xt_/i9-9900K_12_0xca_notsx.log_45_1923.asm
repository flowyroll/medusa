.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a581, %rsi
lea addresses_WT_ht+0x8d81, %rdi
nop
nop
sub $48259, %r15
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $5720, %r13
lea addresses_WT_ht+0x14b99, %rcx
nop
nop
sub $10202, %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_RW+0x11521, %r13
nop
nop
xor $56288, %rsi
movl $0x51525354, (%r13)
dec %r13

// Load
lea addresses_normal+0xc01, %r8
nop
nop
nop
nop
xor %r15, %r15
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0xd81, %r15
clflush (%r15)
nop
nop
nop
and $11678, %r11
mov (%r15), %r14d
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'39': 45}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
