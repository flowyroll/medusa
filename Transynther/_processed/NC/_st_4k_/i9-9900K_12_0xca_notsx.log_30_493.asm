.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x64fd, %rsi
lea addresses_A_ht+0x1ad6f, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $34, %rcx
rep movsl
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x556f, %r8
nop
and %rdx, %rdx
movw $0x6162, (%r8)
add %rcx, %rcx
lea addresses_WT_ht+0xfbcf, %r15
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%r15)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x1936f, %rsi
lea addresses_UC_ht+0x1536f, %rdi
nop
nop
nop
inc %rbp
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1bfef, %rsi
nop
cmp $628, %r8
movl $0x61626364, (%rsi)
nop
nop
dec %rdx
lea addresses_normal_ht+0xe5, %r15
nop
nop
nop
nop
add %rcx, %rcx
movups (%r15), %xmm5
vpextrq $0, %xmm5, %r8
xor $23936, %rdx
lea addresses_WC_ht+0x16bef, %rdx
and %rsi, %rsi
mov (%rdx), %r8d
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x6fcf, %rsi
lea addresses_UC_ht+0x1e36f, %rdi
nop
nop
nop
nop
nop
and $53763, %r8
mov $79, %rcx
rep movsq
nop
nop
nop
nop
xor $51164, %rdx
lea addresses_UC_ht+0x19907, %rsi
lea addresses_normal_ht+0x136f, %rdi
clflush (%rsi)
nop
cmp $19177, %r15
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x6d91, %rdx
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rdx), %rcx
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x1336f, %r14
nop
nop
nop
nop
cmp $25729, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
mov $0x6a7ed10000000ecf, %r15
nop
nop
nop
nop
and $59320, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
and $10079, %r11

// Store
lea addresses_A+0x1033d, %r12
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x51, (%r12)
nop
nop
and $44147, %r15

// Store
lea addresses_A+0x1cb6f, %r15
clflush (%r15)
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%r15)
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0xc56f, %r14
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_PSE+0x1e52f, %rcx
cmp %r14, %r14
movl $0x51525354, (%rcx)
nop
cmp %rbx, %rbx

// Store
mov $0x6bd2fd0000000120, %rbx
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rbx)
cmp %r11, %r11

// Faulty Load
mov $0x7b9028000000036f, %r11
nop
nop
nop
nop
nop
and %rdx, %rdx
movb (%r11), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'51': 30}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
