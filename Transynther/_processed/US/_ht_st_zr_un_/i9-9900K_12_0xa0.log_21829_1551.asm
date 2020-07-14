.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x82f4, %rbp
lfence
movw $0x6162, (%rbp)
lfence
lea addresses_WC_ht+0x11bb8, %rsi
lea addresses_normal_ht+0x116cc, %rdi
nop
nop
nop
nop
dec %rbp
mov $116, %rcx
rep movsl
nop
nop
nop
nop
sub $9035, %rsi
lea addresses_WT_ht+0x6474, %rsi
lea addresses_normal_ht+0x142f4, %rdi
clflush (%rdi)
nop
sub $64375, %r11
mov $41, %rcx
rep movsq
add %r8, %r8
lea addresses_WT_ht+0xdb74, %r11
nop
nop
nop
inc %r9
movb $0x61, (%r11)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x18af4, %r11
nop
nop
nop
nop
nop
add $3733, %rbp
movb $0x61, (%r11)
nop
nop
nop
and $14150, %r11
lea addresses_A_ht+0x5af4, %r11
cmp %rsi, %rsi
mov (%r11), %r8
sub %rdi, %rdi
lea addresses_D_ht+0x8734, %r9
dec %rsi
movl $0x61626364, (%r9)
nop
add $63911, %rbp
lea addresses_UC_ht+0x14ef4, %r8
nop
nop
cmp $19548, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
nop
xor %r8, %r8
lea addresses_UC_ht+0x10cd4, %rsi
lea addresses_normal_ht+0xf35c, %rdi
clflush (%rsi)
nop
nop
cmp %r15, %r15
mov $87, %rcx
rep movsb
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_US+0x9894, %rax
nop
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%rax)
nop
nop
dec %r12

// Store
lea addresses_D+0x13f34, %rbp
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rbp)

// Exception!!!
nop
nop
nop
mov (0), %rbp
nop
nop
inc %rbx

// Store
mov $0xa0e, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rdi)
and $28683, %r12

// Load
lea addresses_WT+0x13934, %rax
nop
nop
nop
nop
and $23757, %r14
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
cmp %r9, %r9

// Load
lea addresses_WC+0x62f4, %rbx
nop
nop
nop
nop
dec %rax
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_US+0x1f2f4, %rdi
nop
inc %rbp
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'48': 10751, '49': 10704, 'ff': 1, '00': 371, '31': 2}
48 00 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 48 48 49 48 49 49 48 49 48 49 48 49 48 49 49 48 49 48 48 49 48 00 49 49 49 00 49 00 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 49 48 48 49 49 48 48 48 49 48 48 49 48 48 48 49 49 48 49 49 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 49 48 49 48 48 48 49 49 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 48 48 49 48 49 48 49 48 49 48 48 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 49 48 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 48 49 48 49 48 49 49 49 49 48 49 48 49 48 49 48 49 48 48 48 48 48 49 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49 49 49 48 48 49 49 48 49 49 49 49 48 49 48 49 49 49 48 49 48 49 48 49 48 49 49 49 48 48 48 48 49 49 48 48 49 48 49 48 49 49 48 49 49 48 49 48 49 48 49 48 48 48 48 49 48 49 49 48 49 48 49 48 49 48 48 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 48 49 48 49 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 48 49 48 49 48 49 49 49 49 48 48 49 48 49 48 49 48 49 48 49 49 48 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 48 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 49 49 49 49 48 49 00 49 49 49 00 49 48 49 49 48 48 49 49 48 48 49 48 49 49 48 48 48 49 48 49 49 48 48 49 48 49 48 49 48 48 48 48 49 48 48 49 48 49 48 48 48 49 49 48 49 48 49 48 49 48 48 48 49 49 48 49 49 49 49 00 49 49 48 49 49 48 48 49 48 48 49 48 49 49 49 48 48 49 49 48 48 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 48 48 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 48 49 48 49 48 49 49 49 49 48 49 48 49 48 49 48 49 49 49 48 49 48 49 48 49 48 48 48 49 48 48 49 48 49 49 48 49 48 48 49 48 49 48 48 49 48 49 48 49 48 49 48 49 49 48 49 49 48 49 48 49 48 49 49 49 48 49 48 49 48 48 49 48 49 49 48 49 49 48 48 48 49 48 48 49 48 48 48 49 49 49 48 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 48 49 49 48 48 49 49 48 48 49 49 48 49 48 49 49 48 49 49 49 48 49 48 49 48 49 48 48 49 49 49 48 48 48 49 48 48 49 48 48 48 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 48 48 49 48 49 49 49 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 48 49 49 49 48 49 48 49 49 48 48 49 48 49 48 49 48 48 48 49 49 48 48 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 49 48 48 48 49 49 48 49 48 49 49 49 48 49 48 49 48 48 49 48 48 49 48 49 48 48 49 49 48 49 48 49 48 49 48 49 48 48 49 49 48 49 48 49 48 48 49 48 49 48 49 49 49 48 49 48 49 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 48 49 49 49 49 48 49 48 49 49 48 48 49 49 49 48 49 48 49 48 49 49 48 49 48 49 49 48 48 49 48 49 48 49 48 49 49 48 48 49 48 48 49 48 48 49 48 48 49 48 49 48 49 49 48 49 48 49 49 49 48 48 49 49 49 48 49 49 48 48 49 48 49 48 48 49 48 49 48 48 48 49 49 48 49 48 49 48 49 49 49 48 48 48 49 48 49 49 48 49 48 48 48 48 49 48 49 48 49 48
*/
