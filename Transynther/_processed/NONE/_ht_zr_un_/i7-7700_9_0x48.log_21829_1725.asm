.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc8d8, %rbp
nop
nop
nop
and $559, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
xor $21466, %rdx
lea addresses_UC_ht+0x2d0, %r8
clflush (%r8)
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%r8)
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x1650, %r8
nop
nop
nop
and $57073, %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x8e50, %rsi
lea addresses_WC_ht+0xeb08, %rdi
nop
nop
nop
nop
nop
sub $24289, %r10
mov $75, %rcx
rep movsb
nop
sub $9117, %r13
lea addresses_D_ht+0xf0d0, %r8
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
nop
cmp $54239, %r10
lea addresses_WT_ht+0xc6e0, %rsi
lea addresses_WT_ht+0x19d50, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $123, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x5a50, %r10
nop
nop
cmp %r8, %r8
mov (%r10), %esi
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x191b0, %rsi
clflush (%rsi)
nop
cmp $6472, %rcx
mov (%rsi), %rdx
xor %rsi, %rsi
lea addresses_normal_ht+0x1a150, %rsi
lea addresses_D_ht+0xb0c0, %rdi
nop
nop
nop
nop
and $50369, %rdx
mov $48, %rcx
rep movsq
sub $26722, %rsi
lea addresses_WT_ht+0xde07, %rcx
nop
nop
cmp $38765, %r10
movb $0x61, (%rcx)
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x53f8, %r8
clflush (%r8)
add %rsi, %rsi
mov (%r8), %rdx
and $20630, %rdx
lea addresses_UC_ht+0x7a50, %r10
lfence
movw $0x6162, (%r10)
nop
nop
dec %r10
lea addresses_WC_ht+0x1cd70, %rsi
lea addresses_A_ht+0x3ff0, %rdi
nop
nop
nop
nop
nop
sub $64126, %r13
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_WT+0x2e50, %rbp
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_WT+0x2e50, %r11
nop
dec %r8
movups (%r11), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'08': 1, '84': 1, '44': 11887, '00': 9930, '49': 3, '46': 7}
44 00 44 00 44 44 44 44 44 00 00 44 44 44 00 44 44 00 00 00 44 00 44 44 00 44 44 44 44 00 44 44 00 00 44 44 44 44 00 00 44 00 00 00 44 44 00 00 44 00 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 00 44 44 00 44 00 44 00 44 44 44 44 00 44 00 00 00 44 44 44 44 00 44 44 44 00 44 44 44 00 00 00 00 00 00 44 44 44 00 44 00 44 00 44 44 00 00 44 44 00 00 00 00 44 44 00 44 00 00 44 00 44 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 00 00 00 00 00 00 00 44 44 44 44 00 44 00 44 44 44 00 00 44 00 00 00 00 00 00 00 00 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 44 44 00 00 00 44 44 00 00 44 00 00 44 44 00 44 00 44 44 44 44 44 00 00 00 44 44 00 44 44 44 00 44 00 00 00 44 44 44 44 44 44 00 44 44 44 00 00 00 44 00 00 44 44 44 00 00 00 44 00 44 00 44 00 44 44 44 00 00 44 44 44 44 44 00 00 00 44 00 44 44 44 00 44 44 00 00 00 00 00 00 44 44 44 44 44 44 00 44 00 00 44 00 00 00 00 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 00 00 00 00 00 44 44 00 00 44 44 44 00 44 44 44 44 00 00 44 00 44 44 00 44 00 44 44 00 44 44 00 00 44 44 44 44 44 00 00 00 44 00 44 00 44 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 00 44 44 00 00 00 44 00 00 00 00 44 44 00 44 44 00 00 44 44 00 44 44 44 00 00 00 00 44 00 44 00 00 00 00 00 44 44 44 00 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 00 00 00 44 44 00 44 44 44 00 00 00 44 00 00 44 00 44 44 44 44 00 00 44 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 44 44 00 00 44 44 44 00 00 00 00 44 44 44 00 44 44 00 44 00 44 00 00 44 44 00 44 00 44 00 00 44 44 00 44 00 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 44 44 00 44 00 00 44 00 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 44 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 00 44 44 00 44 00 44 44 00 44 00 44 44 44 44 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 00 00 44 44 44 00 00 00 00 44 00 00 00 44 44 44 00 44 44 44 44 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 44 44 00 00 44 44 44 00 44 44 44 00 44 00 00 00 00 00 00 00 44 00 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 00 00 44 00 44 44 44 44 44 00 00 00 00 44 44 00 44 00 00 44 44 44 00 00 44 44 00 44 44 44 00 44 44 00 00 44 44 00 00 00 44 00 44 00 00 44 44 44 44 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 00 44 44 00 44 00 00 00 44 44 44 44 44 44 00 44 00 44 44 44 00 44 44 44 00 44 00 00 00 00 00 44 44 00 00 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 00 00 00 00 00 00 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 00 44 44 00 00 44 00 44 00 44 44 44 00 00 44 44 00 44 44 44 00 00 00 44 44 00 44 44 00 44 00 00 44 00 00 44 00 00 00 00 44 44 00 44 44 44 44 44 00 44 00 00 44 00 00 44
*/
