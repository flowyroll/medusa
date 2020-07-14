.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2a25, %r10
nop
inc %r8
mov (%r10), %r13w
nop
nop
cmp $48444, %rcx
lea addresses_A_ht+0xc9cd, %rsi
lea addresses_UC_ht+0x7885, %rdi
nop
nop
nop
cmp %r8, %r8
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
add $16299, %r13
lea addresses_WC_ht+0x18685, %rdi
nop
nop
cmp %r12, %r12
mov (%rdi), %r10w
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x3741, %rcx
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
sub $6666, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rdi

// Store
lea addresses_UC+0x1e285, %r8
nop
nop
nop
nop
sub $19752, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%r8)
xor %r9, %r9

// Store
lea addresses_WT+0x1ce85, %r12
nop
nop
dec %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x285, %r13
nop
nop
nop
nop
dec %r12
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'ff': 3}
ff ff ff
*/
