.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x115ff, %rsi
lea addresses_D_ht+0xbe1b, %rdi
nop
nop
and $26718, %rdx
mov $2, %rcx
rep movsq
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WT+0x1d423, %r12
nop
nop
nop
inc %rsi
mov (%r12), %r8w
nop
nop
nop
nop
cmp $60923, %r9

// Store
lea addresses_WT+0x1d423, %rdx
nop
nop
nop
nop
and $54490, %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
sub $11922, %rdx

// Load
lea addresses_RW+0x18c23, %r9
nop
inc %rcx
vmovntdqa (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
nop
xor $61445, %r8

// Store
lea addresses_PSE+0x11023, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $49835, %rax
movb $0x51, (%r8)
and $11325, %rdx

// Load
lea addresses_UC+0x14423, %r8
nop
nop
inc %r12
movb (%r8), %r9b
nop
dec %rsi

// Faulty Load
lea addresses_WT+0x1d423, %rcx
dec %rdx
movb (%rcx), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'54': 3}
54 54 54
*/
