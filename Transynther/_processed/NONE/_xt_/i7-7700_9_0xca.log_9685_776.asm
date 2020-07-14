.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15a3c, %rdx
nop
nop
nop
nop
nop
cmp $10962, %r11
movl $0x61626364, (%rdx)
nop
sub $28791, %rsi
lea addresses_UC_ht+0xcbc, %rsi
lea addresses_WC_ht+0xcf3c, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $49, %rcx
rep movsb
nop
add %rdx, %rdx
lea addresses_D_ht+0x107bc, %r11
dec %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1125c, %r11
nop
nop
nop
add $48528, %rbp
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x58bc, %rsi
lea addresses_WT_ht+0x1ae4c, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $71, %rcx
rep movsb
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x951c, %r14
nop
cmp $55187, %rdi
movw $0x6162, (%r14)
nop
cmp $57744, %rbp
lea addresses_D_ht+0x433c, %r14
nop
nop
nop
nop
nop
and $7510, %r11
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
dec %rdx
lea addresses_UC_ht+0x1af30, %rsi
lea addresses_normal_ht+0x128bc, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $69, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $16832, %rax
lea addresses_WT_ht+0xf3c, %rbp
xor %rcx, %rcx
movw $0x6162, (%rbp)
nop
dec %r11
lea addresses_UC_ht+0x188bc, %rsi
lea addresses_D_ht+0x4a98, %rdi
xor %rax, %rax
mov $75, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x63bc, %rsi
dec %r14
movw $0x6162, (%rsi)
nop
nop
cmp $63776, %rax
lea addresses_UC_ht+0xb6bc, %r11
nop
nop
nop
nop
and $11523, %r14
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x9834, %rbp
xor %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
dec %rsi
lea addresses_WC_ht+0x140bc, %rdi
clflush (%rdi)
nop
cmp $32049, %r11
mov (%rdi), %rbp
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Load
mov $0x564, %rdx
nop
nop
nop
and $56920, %r9
mov (%rdx), %bx
nop
dec %r12

// Store
lea addresses_US+0x1c2bc, %rax
nop
nop
add $11462, %rbp
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
cmp %rax, %rax

// Store
lea addresses_D+0xa6bc, %r15
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
xor $6835, %rbx

// Load
mov $0xb86, %r12
dec %r15
mov (%r12), %r9
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_WT+0x76bc, %rbx
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
add %rax, %rax

// Load
lea addresses_WT+0x1f8bc, %r15
nop
nop
nop
nop
inc %rbx
mov (%r15), %r12d
nop
nop
sub $18926, %rdx

// Load
lea addresses_RW+0x1324c, %rdx
nop
nop
sub $32404, %rbx
mov (%rdx), %eax
nop
nop
nop
inc %rdx

// Store
lea addresses_US+0x58ec, %r15
nop
nop
nop
nop
add $49438, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r15)
and %r9, %r9

// Store
lea addresses_normal+0x1223e, %r15
nop
nop
nop
nop
nop
cmp $6501, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x34bc, %r12
sub $45974, %r9
mov $0x5152535455565758, %r15
movq %r15, (%r12)
cmp %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x110bc, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'33': 9685}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
