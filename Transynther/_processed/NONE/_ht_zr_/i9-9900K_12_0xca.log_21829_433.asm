.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1db19, %rsi
lea addresses_WT_ht+0x9729, %rdi
nop
nop
nop
nop
and $56464, %r11
mov $41, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1c819, %rsi
lea addresses_UC_ht+0x18d99, %rdi
dec %rbx
mov $14, %rcx
rep movsl
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x17a19, %rax
nop
nop
cmp $62589, %r11
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x18ac1, %rcx
clflush (%rcx)
nop
sub $60013, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
cmp $31255, %rax
lea addresses_normal_ht+0xd675, %rdx
nop
and %rax, %rax
movb (%rdx), %bl
nop
nop
nop
nop
nop
dec %r11
lea addresses_A_ht+0x18c6d, %rsi
lea addresses_normal_ht+0x16dd9, %rdi
clflush (%rsi)
nop
nop
nop
dec %r8
mov $19, %rcx
rep movsb
nop
inc %rax
lea addresses_WT_ht+0x1e019, %rsi
lea addresses_WT_ht+0x576c, %rdi
and $20081, %rdx
mov $122, %rcx
rep movsb
nop
inc %r8
lea addresses_UC_ht+0xc019, %rcx
clflush (%rcx)
nop
nop
add $57424, %r8
mov (%rcx), %edx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1b919, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub $25810, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x3371, %rdi
sub $52692, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_A+0xe109, %r14
nop
nop
nop
nop
nop
add $40555, %r12
mov (%r14), %ebp
nop
add %r14, %r14

// Store
lea addresses_A+0x6819, %rbp
cmp $27854, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_UC+0x65e3, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
movb (%rdi), %dl
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x10449, %rdi
nop
nop
and $8351, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
cmp $17366, %r13

// Store
lea addresses_D+0x14a19, %rdx
clflush (%rdx)
nop
nop
nop
sub $45421, %r12
movl $0x51525354, (%rdx)
cmp $62182, %rbp

// Faulty Load
lea addresses_A+0xe019, %r12
nop
nop
cmp $2558, %rdx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'45': 8849, '49': 1055, '00': 11925}
00 00 00 00 00 49 45 00 00 45 45 49 00 45 00 45 45 00 00 45 00 00 49 00 00 45 45 00 45 45 45 45 00 45 00 45 49 00 00 45 00 00 00 45 00 00 00 00 00 45 00 45 49 00 00 00 00 45 00 00 49 00 45 45 00 00 45 00 45 49 45 49 45 00 00 00 45 00 45 49 00 45 49 49 00 45 49 45 45 45 00 45 45 49 00 00 00 00 45 45 00 45 45 45 45 49 45 00 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 45 49 00 45 45 45 45 00 45 00 45 00 45 45 00 00 45 49 00 45 45 45 00 45 00 45 00 00 49 00 49 00 45 00 00 00 45 00 00 00 00 45 00 00 45 00 45 45 45 00 45 00 00 00 45 49 00 00 45 45 00 49 45 49 45 49 00 45 45 45 00 00 45 00 45 45 00 45 45 45 45 00 45 00 00 00 49 00 45 00 45 45 00 00 49 00 00 00 45 45 00 00 00 45 45 49 49 00 00 45 49 00 45 45 00 00 00 00 00 45 45 45 00 00 49 00 45 00 00 00 00 45 00 00 45 45 45 45 45 00 00 00 45 00 45 45 00 00 45 45 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 45 45 00 00 00 49 00 45 45 00 00 00 45 49 45 45 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 45 00 00 49 00 00 00 45 00 45 45 00 45 49 00 00 00 00 45 45 45 00 00 00 45 00 00 45 00 49 00 00 00 00 00 49 00 45 00 45 49 45 00 00 45 00 45 00 00 45 45 00 00 45 00 45 45 45 00 00 49 00 00 00 00 45 49 49 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 00 49 49 45 49 00 00 45 45 45 45 45 45 00 45 49 00 00 45 45 45 45 49 45 00 00 45 49 45 45 45 00 45 45 00 00 45 00 45 45 00 00 00 00 49 45 00 45 00 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 45 45 45 49 00 45 45 49 45 00 45 49 45 00 00 45 45 49 45 00 45 45 45 49 45 00 45 45 45 00 00 45 00 45 49 45 45 49 00 00 45 00 45 00 45 00 00 45 49 00 00 00 00 45 00 00 00 00 00 45 49 00 00 45 00 45 45 00 45 45 49 00 00 00 00 00 00 45 45 49 45 00 00 00 00 49 00 45 45 00 00 00 00 00 00 00 45 00 45 00 45 45 00 00 00 00 45 00 45 45 49 49 49 00 45 49 00 00 00 00 45 00 49 45 00 00 49 00 45 00 45 49 00 00 45 00 45 49 45 00 49 00 45 00 45 00 00 00 00 00 00 45 00 49 45 00 00 00 45 00 45 45 00 00 45 45 00 00 00 45 45 00 45 00 00 00 00 45 00 45 45 45 45 00 45 00 00 45 00 45 00 49 45 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 00 00 00 45 00 00 45 45 49 00 00 45 00 00 00 00 00 45 00 45 49 00 00 45 45 49 00 00 45 45 49 45 00 45 45 00 45 00 45 45 45 00 49 45 00 45 00 45 00 45 45 00 49 45 00 00 00 00 45 00 00 00 45 00 49 00 00 45 45 00 00 45 00 00 45 00 49 45 00 45 45 00 45 45 45 45 45 00 00 45 45 00 00 49 00 45 45 00 45 49 45 00 00 00 00 00 45 00 00 00 45 45 00 00 49 45 45 00 45 00 45 45 45 00 00 00 00 00 45 00 45 49 49 00 45 00 45 00 45 45 45 45 49 45 45 00 45 00 45 00 45 45 45 49 49 00 45 00 00 00 45 45 45 00 45 45 49 00 45 00 45 00 00 45 00 45 49 45 00 45 49 45 00 45 45 45 00 00 00 45 00 45 00 45 45 49 00 45 45 45 45 49 45 00 00 00 00 00 45 00 00 45 49 45 49 00 49 45 00 45 00 45 00 49 00 45 00 00 49 00 00 00 45 45 00 00 49 00 00 00 00 00 00 00 45 00 00 45 45 00 45 49 00 45 00 45 00 00 00 00 49 45 45 00 00 00 00 00 45 45 00 45 00 00 00 45 45 00 45 00 00 00 00 00 45 45 45 45 00 45 49 00 00 45
*/
