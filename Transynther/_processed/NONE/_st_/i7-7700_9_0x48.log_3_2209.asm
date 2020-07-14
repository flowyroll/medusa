.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7c65, %rsi
lea addresses_UC_ht+0x1d165, %rdi
nop
xor $26903, %r11
mov $53, %rcx
rep movsw
nop
xor $173, %r15
lea addresses_UC_ht+0x13805, %rcx
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_PSE+0xb465, %r14
inc %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r14)
nop
xor $62754, %rcx

// Load
mov $0x226d0b00000008e5, %r14
nop
nop
cmp $46393, %rax
movb (%r14), %r9b
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x1d9e5, %rcx
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0x15c65, %r14
nop
nop
nop
nop
nop
sub $16350, %r8
movw $0x5152, (%r14)
nop
xor $28170, %r15

// Store
lea addresses_WT+0x4ce5, %rcx
nop
nop
nop
nop
nop
cmp $62940, %r8
movl $0x51525354, (%rcx)
nop
xor %rax, %rax

// Store
lea addresses_UC+0x12b65, %r15
nop
nop
nop
nop
nop
inc %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $501, %r8

// Store
lea addresses_WC+0x1ab3e, %r14
clflush (%r14)
nop
nop
nop
nop
inc %r8
movl $0x51525354, (%r14)
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_US+0x1f9dd, %r15
nop
nop
nop
sub $55906, %rcx
movb (%r15), %r9b
nop
nop
nop
nop
and $64085, %rax

// Faulty Load
lea addresses_WT+0x16465, %r15
nop
nop
nop
nop
inc %r9
mov (%r15), %ax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'58': 3}
58 58 58
*/
