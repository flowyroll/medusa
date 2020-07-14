.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb336, %rsi
nop
nop
nop
nop
sub $48013, %r14
mov (%rsi), %rbp
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x10d6e, %r8
nop
inc %rcx
movb (%r8), %bl
nop
and %r8, %r8
lea addresses_WT_ht+0x1484a, %rsi
lea addresses_normal_ht+0x159b6, %rdi
clflush (%rdi)
nop
sub %rbx, %rbx
mov $20, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x16cf6, %rsi
lea addresses_WC_ht+0x17336, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $110, %rcx
rep movsw
add %rsi, %rsi
lea addresses_WC_ht+0x5bb6, %rcx
nop
nop
sub $4519, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
and $16152, %rdi
lea addresses_D_ht+0x3aee, %r14
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
xor $46186, %r12
lea addresses_WC_ht+0x136, %rdi
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rdi)
cmp $49059, %rsi
lea addresses_D_ht+0xf236, %r14
dec %r8
mov (%r14), %r12w
nop
nop
nop
nop
nop
cmp $33512, %r8
lea addresses_normal_ht+0x152b6, %rcx
nop
nop
add $8297, %rdi
movb (%rcx), %r8b
nop
nop
nop
nop
nop
and $14731, %r14
lea addresses_UC_ht+0x1125a, %rsi
lea addresses_WT_ht+0x9136, %rdi
nop
nop
sub %rbp, %rbp
mov $98, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $24634, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x8e15, %rbx
clflush (%rbx)
nop
nop
nop
and $46116, %rsi
movl $0x51525354, (%rbx)
add $35833, %rcx

// Store
lea addresses_D+0x10056, %rdi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
nop
xor $29313, %rbp

// Store
lea addresses_normal+0x12af6, %rdx
nop
nop
nop
nop
nop
sub $20233, %rcx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor $31449, %rbp

// Store
lea addresses_D+0x9d36, %rdi
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x12d36, %rsi
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
dec %rdx

// Store
lea addresses_PSE+0x1cd1c, %rdi
and %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
add %rbx, %rbx

// Store
lea addresses_UC+0xb796, %rdi
add $12644, %r8
movw $0x5152, (%rdi)
nop
nop
nop
inc %r8

// Faulty Load
lea addresses_WT+0x12d36, %rbp
nop
nop
nop
nop
add $12120, %rbx
movaps (%rbp), %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
