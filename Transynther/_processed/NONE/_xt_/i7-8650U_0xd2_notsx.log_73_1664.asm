.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
lea addresses_WC_ht+0x117cc, %r12
clflush (%r12)
nop
nop
xor %r15, %r15
movb $0x61, (%r12)
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x1d452, %rdi
nop
nop
nop
dec %rcx
movb (%rdi), %r14b
nop
nop
xor $47835, %rdi
lea addresses_WT_ht+0xe52, %rbp
inc %rax
movw $0x6162, (%rbp)
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x17516, %r14
nop
nop
nop
nop
cmp %r12, %r12
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rbp
sub %r15, %r15
lea addresses_UC_ht+0xb782, %r15
clflush (%r15)
nop
nop
nop
nop
nop
mfence
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rbp
nop
and $27526, %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x18692, %rsi
lea addresses_UC+0x14212, %rdi
nop
nop
nop
nop
nop
and $44703, %r13
mov $24, %rcx
rep movsl
nop
nop
nop
sub $4826, %r13

// Store
mov $0x6e9be8000000010a, %rcx
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
cmp $64488, %r9

// Store
mov $0x942, %r10
nop
nop
add %r9, %r9
movl $0x51525354, (%r10)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x17ba2, %r11
clflush (%r11)
nop
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovntdq %ymm5, (%r11)
nop
nop
nop
add $39419, %rsi

// Faulty Load
lea addresses_PSE+0x8c52, %rcx
nop
xor %rsi, %rsi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'33': 73}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
