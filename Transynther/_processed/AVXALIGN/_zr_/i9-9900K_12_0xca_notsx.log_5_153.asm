.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x18ff7, %r13
nop
nop
nop
add $43014, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovntdq %ymm4, (%r13)
cmp $211, %r13

// Load
lea addresses_WT+0x16777, %r13
nop
nop
nop
sub %rbx, %rbx
movb (%r13), %r9b
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_RW+0x1e517, %rdx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
cmp $9766, %rcx

// Store
lea addresses_WC+0x16f7, %rbx
cmp $10418, %rsi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
sub $47302, %rcx

// Store
lea addresses_WC+0x1eda7, %rcx
nop
nop
nop
nop
cmp $20965, %rsi
movw $0x5152, (%rcx)
nop
sub %r13, %r13

// Faulty Load
mov $0x706a4d00000007f7, %rbx
nop
and %r9, %r9
vmovaps (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 5}
00 00 00 00 00
*/
