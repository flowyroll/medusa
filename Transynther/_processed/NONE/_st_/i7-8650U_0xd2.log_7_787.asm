.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7467, %rsi
nop
nop
nop
nop
add $888, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
add $36034, %rbx
lea addresses_WT_ht+0x1cb47, %r13
nop
nop
mfence
movb $0x61, (%r13)
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x17b07, %rbp
clflush (%rbp)
nop
nop
nop
cmp $40081, %rbx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0xf1f7, %r13
add %rbp, %rbp
movw $0x6162, (%r13)
nop
sub $58008, %rsi
lea addresses_D_ht+0x186df, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $48629, %r13
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
dec %rbx
lea addresses_normal_ht+0xaf07, %rcx
nop
and $4023, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rcx)
sub $17925, %rbp
lea addresses_WT_ht+0x7f07, %rsi
lea addresses_WT_ht+0x81c7, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $72, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x6f07, %rsi
lea addresses_A_ht+0x1467, %rdi
nop
nop
and $17129, %r9
mov $1, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $41602, %rbp
lea addresses_normal_ht+0x7607, %rsi
lea addresses_A_ht+0x17c63, %rdi
clflush (%rsi)
nop
mfence
mov $15, %rcx
rep movsb
nop
nop
xor $9168, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_D+0x5a87, %r10
nop
nop
nop
nop
sub $39893, %r13
movw $0x5152, (%r10)
nop
nop
and %rsi, %rsi

// Store
lea addresses_D+0xf477, %rdi
nop
sub %r14, %r14
movl $0x51525354, (%rdi)
xor $14375, %rsi

// Store
lea addresses_WT+0x19707, %r10
nop
nop
sub %rax, %rax
movb $0x51, (%r10)
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x1ba87, %r10
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
add $20613, %r13

// Load
lea addresses_RW+0x8b07, %r10
nop
nop
nop
nop
nop
add $60396, %rbp
movb (%r10), %r13b
sub $54285, %rbp

// Store
lea addresses_UC+0x1ff07, %rdi
nop
nop
sub $9298, %r14
movw $0x5152, (%rdi)
and $4950, %r14

// Store
lea addresses_US+0x14721, %rdi
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rdi)
nop
xor %rax, %rax

// Load
lea addresses_A+0x16b87, %rsi
nop
nop
add %rax, %rax
mov (%rsi), %edi
nop
nop
nop
nop
nop
sub $50651, %rax

// Faulty Load
lea addresses_A+0xd707, %r14
clflush (%r14)
nop
nop
nop
xor $29960, %rbp
mov (%r14), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'51': 7}
51 51 51 51 51 51 51
*/
