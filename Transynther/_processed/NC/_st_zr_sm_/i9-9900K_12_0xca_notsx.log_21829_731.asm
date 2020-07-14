.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14add, %rax
nop
nop
nop
nop
cmp $34443, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
nop
nop
add $63608, %r9
lea addresses_WT_ht+0x1781d, %r14
nop
add $41540, %rbx
mov (%r14), %r8d
nop
nop
nop
and $54254, %r9
lea addresses_WT_ht+0x11da3, %r9
clflush (%r9)
inc %r11
movb (%r9), %r14b
sub $2024, %rbp
lea addresses_UC_ht+0x10ca5, %r9
nop
nop
nop
nop
nop
and $8808, %rax
movb $0x61, (%r9)
and $7003, %r8
lea addresses_WC_ht+0xf91f, %rsi
lea addresses_D_ht+0x14cad, %rdi
inc %rbx
mov $10, %rcx
rep movsw
nop
and $42680, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x108dd, %r8
nop
nop
xor %r11, %r11
mov (%r8), %rdx
nop
add $56330, %r8

// Store
lea addresses_PSE+0x66dd, %r11
nop
nop
nop
nop
nop
inc %rdx
movb $0x51, (%r11)
nop
lfence

// Store
lea addresses_PSE+0x19ddd, %rsi
nop
nop
nop
sub $21844, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_RW+0x10add, %rcx
clflush (%rcx)
nop
nop
cmp $32724, %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor $14382, %rdx

// Store
lea addresses_A+0xc5dd, %r11
nop
nop
nop
nop
nop
add $48888, %rdi
movl $0x51525354, (%r11)
nop
nop
xor %rdx, %rdx

// Load
lea addresses_WT+0x305d, %r8
nop
nop
nop
nop
xor $60465, %rdi
mov (%r8), %rsi
nop
sub $35900, %r14

// Store
mov $0x394ab30000000add, %r11
nop
and $371, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0x5fd5, %r8
nop
cmp $35356, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x394ab30000000add, %rdx
sub $56712, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
mov $0x394ab30000000add, %rsi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
dec %rdx

// Load
mov $0x426e240000000cdd, %r8
nop
nop
nop
nop
nop
add $52024, %rdi
movb (%r8), %r11b
nop
nop
nop
dec %r11

// Faulty Load
mov $0x394ab30000000add, %rcx
nop
add %r14, %r14
movb (%rcx), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'00': 5226, '58': 16603}
00 00 00 00 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 00 00 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 00 00 58 58 58 00 00 58 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 00 00 58 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 00 58 00 58 00 00 58 58 58 58 58 58 58 00 58 00 00 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 00 58 00 58 00 58 00 58 00 58 00 00 00 58 58 58 58 00 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 00 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 00 58 58 58 00 58 00 00 58 58 00 58 58 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 00 58 00 58 58 00 00 58 58 00 58 58 00 58 00 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 00 00 00 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00
*/
