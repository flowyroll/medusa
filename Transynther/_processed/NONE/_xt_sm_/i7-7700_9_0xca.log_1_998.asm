.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x160cd, %r15
nop
nop
dec %r14
mov (%r15), %r12w
nop
nop
nop
xor $23142, %rax
lea addresses_normal_ht+0x19e04, %rcx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rcx)
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1b744, %rsi
lea addresses_normal_ht+0x1c604, %rdi
nop
nop
nop
nop
cmp $28749, %r15
mov $27, %rcx
rep movsq
nop
xor $45369, %r12
lea addresses_normal_ht+0x1ab84, %rsi
lea addresses_UC_ht+0x6604, %rdi
nop
nop
sub $25653, %r15
mov $24, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1a04, %rsi
lea addresses_normal_ht+0x9f24, %rdi
and %r9, %r9
mov $48, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x14c04, %r9
nop
nop
cmp $19764, %rsi
mov (%r9), %eax
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x11e04, %rsi
lea addresses_WT_ht+0x15c10, %rdi
nop
nop
nop
inc %r9
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1ca04, %r12
clflush (%r12)
dec %r14
movb $0x61, (%r12)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xaf8, %r15
nop
and $21297, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %r15
movntdq %xmm5, (%r15)
xor $46155, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x15404, %r10
nop
nop
nop
nop
nop
and $56984, %r13
movl $0x51525354, (%r10)
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x12ce4, %rsi
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_D+0x5604, %r10
clflush (%r10)
sub %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r10)
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0x1e744, %r11
dec %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
and %r11, %r11

// Store
lea addresses_WC+0x13004, %rcx
nop
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_D+0x6084, %r13
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovntdq %ymm5, (%r13)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_D+0x5604, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'58': 1}
58
*/
