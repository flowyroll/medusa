.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf720, %rsi
lea addresses_A_ht+0x1c170, %rdi
nop
nop
nop
nop
cmp $15296, %r14
mov $35, %rcx
rep movsb
nop
nop
nop
sub $49441, %r9
lea addresses_D_ht+0x1d320, %r13
nop
xor %rsi, %rsi
movw $0x6162, (%r13)
nop
nop
nop
cmp $43269, %r13
lea addresses_WT_ht+0x5720, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
movb (%rcx), %r14b
nop
dec %r13
lea addresses_WC_ht+0x63a0, %r11
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r11)
nop
nop
dec %r14
lea addresses_A_ht+0x10b20, %rsi
lea addresses_WC_ht+0x3840, %rdi
cmp $63705, %r13
mov $16, %rcx
rep movsb
nop
nop
nop
nop
xor $54657, %r14
lea addresses_D_ht+0x16148, %rsi
lea addresses_A_ht+0xe700, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x157c0, %rcx
clflush (%rcx)
nop
dec %r11
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x14f20, %rsi
lea addresses_D_ht+0x1e3a0, %rdi
nop
nop
nop
nop
nop
add $26946, %r8
mov $72, %rcx
rep movsw
nop
nop
xor $49547, %rsi
lea addresses_A_ht+0x1d720, %r9
nop
sub $46597, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x11968, %r8
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r8)
nop
nop
and %r9, %r9
lea addresses_A_ht+0xc360, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $19898, %r8
movw $0x6162, (%rcx)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xb320, %rsi
lea addresses_WT_ht+0x13f20, %rdi
nop
nop
cmp %r14, %r14
mov $12, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1b326, %rdi
nop
nop
nop
cmp $7592, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_WC+0xb420, %rsi
nop
dec %r14
mov (%rsi), %ax
nop
nop
nop
nop
add $52740, %r10

// Store
mov $0x720, %r14
clflush (%r14)
and %r9, %r9
movw $0x5152, (%r14)
xor $61080, %r14

// Store
lea addresses_PSE+0x7c77, %r10
nop
nop
nop
sub $21206, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
nop
sub $17512, %rax

// REPMOV
lea addresses_US+0x2720, %rsi
lea addresses_normal+0xf7c2, %rdi
nop
nop
nop
nop
cmp $12875, %rax
mov $70, %rcx
rep movsb
nop
nop
nop
and %r9, %r9

// REPMOV
mov $0x5623760000000e43, %rsi
mov $0x73e3990000000580, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $92, %rcx
rep movsl
cmp %rdi, %rdi

// Store
lea addresses_PSE+0x1bbf8, %r10
nop
add %rax, %rax
movb $0x51, (%r10)
nop
nop
nop
sub $17137, %rdi

// Store
lea addresses_RW+0x14720, %r10
clflush (%r10)
sub %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
sub $12428, %rcx

// Store
lea addresses_UC+0x6f20, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, (%r14)
inc %rdi

// REPMOV
lea addresses_normal+0xb7a0, %rsi
lea addresses_D+0x10b20, %rdi
clflush (%rdi)
nop
nop
cmp $10207, %r10
mov $82, %rcx
rep movsb
nop
nop
dec %r9

// Store
lea addresses_US+0x2720, %rsi
and %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x2720, %rdi
nop
and $26465, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_normal+0x1a020, %rcx
nop
dec %rsi
movw $0x5152, (%rcx)
add $15864, %rcx

// Load
lea addresses_WT+0x6f20, %rcx
sub %r9, %r9
mov (%rcx), %r10
nop
nop
nop
nop
nop
xor $54117, %rsi

// Store
lea addresses_RW+0x17f20, %r9
xor %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movaps %xmm4, (%r9)
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_US+0x2720, %rdi
nop
dec %rax
movb (%rdi), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_NC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'00': 1}
00
*/
