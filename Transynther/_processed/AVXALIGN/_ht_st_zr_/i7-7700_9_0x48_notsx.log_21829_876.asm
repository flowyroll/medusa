.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x62e2, %rsi
lea addresses_WT_ht+0xae2, %rdi
nop
nop
nop
nop
cmp $145, %r9
mov $33, %rcx
rep movsb
nop
sub $31088, %rbx
lea addresses_WC_ht+0x45e2, %r13
clflush (%r13)
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r13)
inc %r13
lea addresses_D_ht+0x6e9e, %rsi
lea addresses_A_ht+0x6182, %rdi
nop
nop
nop
nop
and $23175, %rbx
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x129e2, %rsi
lea addresses_WC_ht+0x2ce2, %rdi
nop
nop
nop
nop
xor $51430, %r9
mov $95, %rcx
rep movsl
nop
and %rbx, %rbx
lea addresses_normal_ht+0x51e2, %r9
nop
nop
nop
nop
nop
inc %r14
movw $0x6162, (%r9)
nop
nop
nop
inc %r14
lea addresses_normal_ht+0xb5a2, %r13
nop
nop
nop
sub $28919, %rsi
mov (%r13), %r14d
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1c022, %rsi
lea addresses_UC_ht+0xef56, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $23, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x9a6, %rsi
lea addresses_A_ht+0x611a, %rdi
nop
nop
nop
inc %r13
mov $15, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xb17, %r14
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x11dc0, %r11
clflush (%r11)
nop
nop
add %r12, %r12
mov (%r11), %rcx
sub %r12, %r12

// Store
lea addresses_UC+0x185a, %r12
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
nop
and $10500, %rdi

// REPMOV
lea addresses_PSE+0x6262, %rsi
lea addresses_D+0xd9e2, %rdi
clflush (%rsi)
inc %r10
mov $28, %rcx
rep movsw
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_normal+0x166e2, %rsi
lea addresses_WC+0xed62, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi

// Store
mov $0x16cc650000000fe2, %r12
nop
nop
nop
nop
add $10852, %r15
movl $0x51525354, (%r12)
nop
nop
nop
nop
and $57211, %r10

// Store
lea addresses_normal+0x1a11a, %rdi
nop
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
xor $44354, %r12

// Faulty Load
lea addresses_D+0xd9e2, %rsi
nop
add $15959, %r15
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'48': 89, '46': 3, '34': 21595, '49': 1, '00': 141}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 48 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 46 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
