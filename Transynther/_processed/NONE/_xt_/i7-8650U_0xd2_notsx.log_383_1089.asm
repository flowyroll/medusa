.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x98ac, %rsi
lea addresses_D_ht+0x127ec, %rdi
nop
nop
nop
nop
add $44281, %rdx
mov $99, %rcx
rep movsb
nop
nop
nop
nop
cmp $58621, %rcx
lea addresses_D_ht+0x816c, %rsi
lea addresses_D_ht+0x3f2c, %rdi
sub %r13, %r13
mov $53, %rcx
rep movsw
add $11794, %rdi
lea addresses_normal_ht+0xabfc, %rdi
nop
nop
nop
nop
add $47587, %r13
movb (%rdi), %dl
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1ec16, %r11
nop
nop
nop
nop
add %rax, %rax
movups (%r11), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
cmp $20875, %rax
lea addresses_UC_ht+0xeaac, %rdx
clflush (%rdx)
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x16efc, %rsi
lea addresses_WC_ht+0x19c12, %rdi
nop
nop
nop
sub %rax, %rax
mov $36, %rcx
rep movsq
nop
nop
sub $34580, %rsi
lea addresses_A_ht+0x382c, %rsi
lea addresses_WC_ht+0x1d62a, %rdi
add $30016, %r9
mov $74, %rcx
rep movsq
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x18b6b, %rsi
lea addresses_UC_ht+0x1e59f, %rdi
nop
nop
nop
dec %r9
mov $116, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_WC_ht+0x1492c, %rsi
lea addresses_UC_ht+0x138b8, %rdi
clflush (%rsi)
nop
nop
and $38606, %rax
mov $49, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_UC_ht+0xb6ec, %r13
nop
nop
nop
nop
nop
and $7041, %rdi
movb (%r13), %r11b
nop
nop
nop
and $9104, %rdi
lea addresses_WT_ht+0x13a2c, %rdi
nop
nop
cmp %rax, %rax
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
inc %r9
lea addresses_UC_ht+0x1802c, %rsi
lea addresses_D_ht+0x10aec, %rdi
add %r13, %r13
mov $103, %rcx
rep movsl
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x146ee, %rax
nop
cmp %rdi, %rdi
mov (%rax), %r13
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1d32c, %rdx
xor $38697, %r9
movl $0x61626364, (%rdx)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ae2c, %rax
clflush (%rax)
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x72748d000000072c, %r13
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
dec %rbx

// Faulty Load
lea addresses_PSE+0x17c2c, %rdx
nop
nop
xor $12955, %r15
movb (%rdx), %r13b
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'33': 383}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
