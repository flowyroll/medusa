.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x320e, %r11
nop
xor %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r11)
nop
cmp $10700, %rdi
lea addresses_D_ht+0x1ede8, %rsi
lea addresses_WC_ht+0x6d18, %rdi
nop
nop
xor $60568, %r11
mov $45, %rcx
rep movsw
sub %rsi, %rsi
lea addresses_A_ht+0x1b2f0, %rcx
nop
cmp $28571, %r8
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
sub $9297, %r11
lea addresses_UC_ht+0x1eb08, %rsi
lea addresses_D_ht+0x9798, %rdi
nop
cmp $56408, %r11
mov $82, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x10778, %r8
nop
xor %rcx, %rcx
movl $0x61626364, (%r8)
nop
add %rcx, %rcx
lea addresses_normal_ht+0x4ef8, %rsi
lea addresses_UC_ht+0x1e9f8, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $45609, %rbx
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $8927, %r13
lea addresses_WT_ht+0x1d298, %r11
nop
sub $17681, %r12
mov (%r11), %r8d
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x43b8, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %r13
nop
xor $52969, %rsi
lea addresses_D_ht+0x58f8, %r11
clflush (%r11)
nop
nop
nop
sub $4808, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
cmp $47013, %rcx
lea addresses_A_ht+0x10ab8, %rsi
lea addresses_A_ht+0x7798, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $30, %rcx
rep movsw
nop
nop
nop
nop
cmp $5576, %r8
lea addresses_D_ht+0x19ef8, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov (%rdi), %r11d
nop
nop
nop
xor $25142, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0xdff8, %rsi
nop
nop
nop
nop
inc %rcx
mov (%rsi), %rdx
nop
nop
sub %rbx, %rbx

// REPMOV
lea addresses_WC+0xebf6, %rsi
lea addresses_WT+0x6186, %rdi
nop
nop
nop
and %r14, %r14
mov $16, %rcx
rep movsq
nop
nop
add %rdx, %rdx

// Store
mov $0x798, %rsi
cmp %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WT+0xdf0, %r15
clflush (%r15)
nop
xor %rcx, %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
xor $48525, %rbx

// Store
lea addresses_WC+0x1dc6c, %rsi
nop
nop
nop
nop
nop
sub $54164, %r14
movl $0x51525354, (%rsi)
sub %rcx, %rcx

// Store
mov $0xaf8, %rbx
nop
nop
nop
nop
add $47236, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
xor $1424, %rcx

// Store
lea addresses_normal+0xf648, %r15
nop
nop
cmp $1523, %r14
movw $0x5152, (%r15)
nop
nop
inc %rbx

// Faulty Load
mov $0x2be64b00000001f8, %r14
sub %rsi, %rsi
mov (%r14), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}}
{'c0': 2, 'c4': 1, '00': 21826}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
