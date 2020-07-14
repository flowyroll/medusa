.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15393, %rsi
lea addresses_UC_ht+0xfe93, %rdi
nop
nop
nop
nop
and $46725, %r13
mov $29, %rcx
rep movsb
nop
nop
sub $65401, %r11
lea addresses_UC_ht+0xdfd3, %rsi
lea addresses_normal_ht+0x182c3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $57906, %r14
mov $65, %rcx
rep movsb
and $14376, %rsi
lea addresses_WC_ht+0x1b893, %rsi
lea addresses_WC_ht+0x14693, %rdi
nop
cmp %r12, %r12
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x9cb3, %r12
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r12)
xor $33523, %rcx
lea addresses_UC_ht+0x1a353, %r11
nop
xor $9345, %rcx
mov (%r11), %r13d
add %r12, %r12
lea addresses_WT_ht+0x1b65b, %r13
add $34454, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
cmp $20372, %r11
lea addresses_WT_ht+0x159b, %rsi
lea addresses_D_ht+0x906e, %rdi
dec %r15
mov $39, %rcx
rep movsw
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x16013, %r13
clflush (%r13)
nop
nop
nop
nop
and $31355, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xf0a3, %rdx
nop
nop
nop
nop
xor $39823, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
dec %rcx

// Store
lea addresses_WT+0xe513, %r9
nop
nop
and $46068, %rbx
movl $0x51525354, (%r9)
add $48907, %rcx

// Store
lea addresses_UC+0x1b593, %rax
nop
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
mov $0x4055d50000000e93, %r9
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r9)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rax
nop
nop
nop
nop
dec %r9

// Store
lea addresses_PSE+0xb0cb, %rdx
nop
nop
nop
nop
sub $3991, %rsi
movb $0x51, (%rdx)
nop
nop
xor $14527, %r10

// Store
lea addresses_WT+0xb693, %r10
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r10)
cmp $11828, %rbx

// Store
lea addresses_PSE+0xd2d3, %rbx
nop
nop
add $16827, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
and $26543, %rcx

// Load
lea addresses_UC+0xda57, %rsi
nop
nop
nop
dec %r10
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
cmp $303, %rsi

// Store
lea addresses_WC+0xec73, %rdx
nop
nop
nop
sub $5731, %rax
movb $0x51, (%rdx)
nop
nop
add $31749, %r9

// Faulty Load
mov $0x4055d50000000e93, %r10
nop
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 1}
00
*/
