.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16090, %rsi
lea addresses_A_ht+0x8872, %rdi
nop
nop
nop
nop
sub $35274, %r11
mov $77, %rcx
rep movsw
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x16b92, %r9
nop
nop
nop
nop
sub $6308, %rax
mov (%r9), %cx
nop
nop
nop
nop
nop
add $14986, %rcx
lea addresses_normal_ht+0x15072, %rsi
lea addresses_WT_ht+0x7d12, %rdi
clflush (%rdi)
add %r12, %r12
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
add $21417, %rsi
lea addresses_normal_ht+0x1a992, %rdi
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx

// Load
lea addresses_UC+0x15c72, %r15
inc %r8
movb (%r15), %r12b
nop
nop
nop
dec %r12

// Load
lea addresses_UC+0x9445, %r15
nop
nop
nop
nop
nop
and $7424, %rcx
movb (%r15), %r8b
nop
nop
nop
xor $18807, %r15

// Store
lea addresses_WC+0x5d1a, %r15
clflush (%r15)
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%r15)
xor %rcx, %rcx

// Store
lea addresses_RW+0x10cee, %r8
clflush (%r8)
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
xor $4305, %r8

// Store
lea addresses_UC+0xbc32, %r12
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r12)
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_WC+0x14332, %r8
nop
nop
nop
xor $28524, %r10
movl $0x51525354, (%r8)
nop
nop
and %r12, %r12

// Store
lea addresses_WT+0x1d532, %r8
nop
nop
add $33491, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x12872, %r15
nop
nop
nop
nop
xor $44524, %r9
mov (%r15), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': True, 'congruent': 4}}
{'00': 2}
00 00
*/
