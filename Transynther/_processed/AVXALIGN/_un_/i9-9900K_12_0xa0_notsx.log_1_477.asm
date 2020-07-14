.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1470a, %rbp
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm2, (%rbp)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1130a, %rcx
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xa80a, %r13
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
and $45389, %rdx
lea addresses_WT_ht+0x1d3ea, %r13
nop
nop
and $47596, %r10
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x1d976, %r13
nop
nop
add %rdx, %rdx
movb (%r13), %cl
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x139bf, %rcx
cmp $12003, %r13
mov (%rcx), %rdx
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1db0a, %rsi
lea addresses_normal_ht+0x310a, %rdi
nop
nop
nop
and $13527, %r13
mov $5, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x1d30a, %r10
nop
nop
xor $3899, %rbp
movb $0x61, (%r10)
nop
nop
nop
nop
cmp $7521, %rcx
lea addresses_WT_ht+0x1ab0a, %rsi
lea addresses_WT_ht+0x1030a, %rdi
nop
nop
nop
nop
dec %rdx
mov $66, %rcx
rep movsq
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x296a, %rsi
lea addresses_WC_ht+0x10f0a, %rdi
nop
nop
nop
nop
sub $38005, %rdx
mov $3, %rcx
rep movsl
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x370a, %rsi
lea addresses_A_ht+0x1c70a, %rdi
clflush (%rsi)
nop
cmp $55209, %r10
mov $107, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x109b8, %rbp
nop
nop
nop
nop
nop
sub $4115, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbp)
xor $23894, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x62ad68000000070a, %rax
sub %rsi, %rsi
movb $0x51, (%rax)
nop
nop
nop
nop
nop
add %rax, %rax

// REPMOV
lea addresses_D+0x1f30a, %rsi
mov $0x39ad4d0000000a3e, %rdi
clflush (%rdi)
nop
nop
xor $19676, %r11
mov $83, %rcx
rep movsw
nop
xor %r11, %r11

// Store
lea addresses_RW+0x9f62, %r11
and %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_A+0x18c8a, %r9
clflush (%r9)
nop
xor $14028, %r8
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x7aaa, %r8
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r8)
nop
nop
cmp $34546, %rcx

// Store
lea addresses_normal+0xe30a, %rdi
nop
cmp %r11, %r11
movw $0x5152, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0xe30a, %r9
clflush (%r9)
nop
add $35160, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r9)
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_D+0x1ab0a, %rsi
lea addresses_WC+0x341a, %rdi
inc %rax
mov $92, %rcx
rep movsw
dec %r8

// REPMOV
lea addresses_A+0x96e6, %rsi
lea addresses_normal+0x570a, %rdi
nop
nop
nop
nop
and $46444, %rbp
mov $118, %rcx
rep movsw
nop
nop
add $13045, %rax

// Store
lea addresses_D+0x19c0a, %rcx
nop
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%rcx)
nop
cmp $59064, %rbp

// Store
lea addresses_PSE+0xb70a, %rax
nop
nop
nop
add $6822, %rbp
movw $0x5152, (%rax)
add $767, %rax

// Store
lea addresses_US+0x280a, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
sub $18729, %rax

// Store
mov $0x29534a000000010a, %rcx
nop
nop
nop
nop
add $11959, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
add $60961, %r8

// Store
mov $0x866, %r8
nop
cmp %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_D+0x1f30a, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r11), %edi
lea oracles, %rdi
and $0xff, %rdi
shlq $12, %rdi
mov (%rdi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'5f': 1}
5f
*/
