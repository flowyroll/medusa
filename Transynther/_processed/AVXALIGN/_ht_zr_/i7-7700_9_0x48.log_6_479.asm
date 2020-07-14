.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12a3b, %r8
nop
nop
nop
nop
add %r11, %r11
movw $0x6162, (%r8)
inc %r11
lea addresses_WT_ht+0x6b33, %rax
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
nop
nop
cmp $8948, %rax
lea addresses_WT_ht+0x30f3, %r15
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%r15)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x16753, %rsi
lea addresses_WT_ht+0xc6d3, %rdi
nop
nop
sub %rax, %rax
mov $3, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x10973, %rsi
nop
nop
nop
inc %r14
mov (%rsi), %r11w
nop
sub $58334, %r11
lea addresses_D_ht+0x79f3, %rsi
lea addresses_D_ht+0x12df3, %rdi
clflush (%rsi)
nop
sub $51306, %r15
mov $78, %rcx
rep movsq
nop
and $45370, %r15
lea addresses_UC_ht+0x12c97, %rax
nop
nop
nop
nop
nop
xor $2270, %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xa9f3, %r8
nop
and %rsi, %rsi
movb (%r8), %r14b
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x160f3, %rsi
nop
nop
dec %r15
movl $0x61626364, (%rsi)
nop
nop
add $53686, %r14
lea addresses_D_ht+0xb5cb, %rax
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1b943, %rsi
lea addresses_US+0x1ed73, %rdi
add %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_D+0x7389, %r15
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r15)
nop
and $54315, %rcx

// Store
lea addresses_RW+0x11f3, %r15
add %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp $30014, %rdi

// Store
mov $0xc59, %rbx
dec %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_RW+0x11f3, %rsi
nop
nop
xor %rdi, %rdi
movb $0x51, (%rsi)
nop
cmp $25196, %rcx

// Store
lea addresses_WC+0xcc56, %rcx
nop
cmp $15963, %r9
movw $0x5152, (%rcx)
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_RW+0x11f3, %rsi
add $1547, %rbp
movntdqa (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'46': 1, '00': 5}
00 00 00 00 00 46
*/
