.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcbb1, %r14
nop
cmp %rsi, %rsi
movl $0x61626364, (%r14)
dec %r11
lea addresses_UC_ht+0x8731, %r13
nop
nop
nop
cmp $49352, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
xor $30030, %r10
lea addresses_normal_ht+0x1188d, %r14
nop
dec %rax
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
sub $64125, %rsi
lea addresses_WC_ht+0x1971, %rsi
lea addresses_UC_ht+0x14bb1, %rdi
xor $47967, %rax
mov $67, %rcx
rep movsw
nop
nop
nop
dec %rax
lea addresses_normal_ht+0xbbb1, %rsi
lea addresses_normal_ht+0x1e331, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $123, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x67b1, %rax
nop
nop
nop
add $28847, %rsi
movb $0x61, (%rax)
nop
add $41162, %rbx
lea addresses_D_ht+0x9c6c, %rbx
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%rbx)
add $13111, %rax
lea addresses_A_ht+0x18425, %r10
dec %r11
mov (%r10), %eax
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1d3b1, %r10
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%r10), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1cce1, %r10
nop
nop
and %r11, %r11
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x4db1, %rsi
lea addresses_A_ht+0x14bb1, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $75, %rcx
rep movsq
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_PSE+0xdb1, %r15
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r15)
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0x143b1, %rcx
nop
nop
sub %r11, %r11
mov (%rcx), %r14w
nop
nop
nop
inc %rax

// Store
mov $0x1d97100000000bb1, %r15
nop
nop
nop
nop
nop
add $9123, %r11
movl $0x51525354, (%r15)
dec %r15

// Store
mov $0xc91, %rax
clflush (%rax)
xor $34731, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rax)
nop
nop
add $41989, %r14

// Faulty Load
lea addresses_WT+0x143b1, %r15
nop
add $16436, %rcx
mov (%r15), %r14w
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'39': 29}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
