.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5d01, %r9
and %r15, %r15
mov (%r9), %si
nop
nop
nop
nop
sub $31311, %r14
lea addresses_D_ht+0x9101, %rsi
lea addresses_A_ht+0x5d01, %rdi
nop
nop
nop
nop
nop
cmp $52386, %r9
mov $82, %rcx
rep movsb
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x1b001, %rsi
lea addresses_D_ht+0xd01, %rdi
clflush (%rsi)
xor %r13, %r13
mov $3, %rcx
rep movsl
xor $25574, %r14
lea addresses_A_ht+0x1df21, %rcx
nop
nop
nop
add %r15, %r15
mov (%rcx), %r13
nop
nop
and $16015, %r9
lea addresses_A_ht+0xbe65, %r14
nop
nop
nop
nop
nop
dec %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $24032, %rdi
lea addresses_A_ht+0x1eec4, %rsi
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x1cfd1, %r9
nop
nop
nop
xor $29454, %rsi
movb $0x61, (%r9)
nop
dec %r9
lea addresses_A_ht+0xbdc1, %rcx
nop
nop
nop
nop
cmp $49230, %r13
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
sub $11068, %rsi
lea addresses_WC_ht+0x15581, %r13
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
dec %r14
lea addresses_normal_ht+0xb35d, %rcx
nop
add %rdi, %rdi
movb $0x61, (%rcx)
and %r15, %r15
lea addresses_D_ht+0x7981, %rcx
lfence
mov (%rcx), %di
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x3501, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $30161, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x501, %rsi
lea addresses_WT_ht+0xf7c1, %rdi
clflush (%rdi)
nop
nop
nop
inc %rbp
mov $60, %rcx
rep movsb
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0xcf63, %rcx
nop
add $52461, %r8
movl $0x51525354, (%rcx)
nop
and %rsi, %rsi

// Store
lea addresses_A+0x13c19, %rsi
nop
add $54668, %r8
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_RW+0xfe31, %rcx
nop
nop
cmp $31493, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
cmp $11716, %rbx

// Faulty Load
lea addresses_D+0x19d01, %r8
nop
xor $37900, %rax
movb (%r8), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'36': 22}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
