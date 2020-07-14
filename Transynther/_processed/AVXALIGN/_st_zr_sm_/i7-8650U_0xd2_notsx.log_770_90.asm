.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d8ee, %rbx
nop
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%rbx)
nop
add $19069, %rsi
lea addresses_A_ht+0xaee, %rsi
lea addresses_WC_ht+0xd85b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $43, %rcx
rep movsb
nop
nop
cmp $55539, %rcx
lea addresses_D_ht+0x14192, %rsi
nop
nop
nop
nop
sub %r9, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x348a, %r10
xor $20281, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
nop
sub $15547, %rbp

// Store
lea addresses_WT+0x120ee, %r8
clflush (%r8)
nop
nop
inc %rcx
movl $0x51525354, (%r8)
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_WT+0x120ee, %rsi
lea addresses_D+0xeb00, %rdi
nop
nop
nop
nop
nop
and $38928, %rbp
mov $0, %rcx
rep movsb
nop
nop
dec %rbp

// Store
lea addresses_RW+0x1ccee, %r15
nop
nop
nop
nop
nop
dec %r10
movw $0x5152, (%r15)
xor $5785, %rcx

// Load
lea addresses_US+0x26a6, %rbx
nop
nop
nop
nop
cmp $18702, %rbp
movb (%rbx), %al
nop
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_WC+0x80ee, %rcx
nop
cmp %rbp, %rbp
movb (%rcx), %al
nop
nop
add $6205, %r8

// Faulty Load
lea addresses_WT+0x120ee, %rdi
nop
nop
nop
nop
nop
dec %rbx
vmovntdqa (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'54': 90, '00': 680}
54 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 54 54 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 54 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 54 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 54 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 54 00 00 54 00 00 00 00 00 54 54 00 00 00 54 00 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
