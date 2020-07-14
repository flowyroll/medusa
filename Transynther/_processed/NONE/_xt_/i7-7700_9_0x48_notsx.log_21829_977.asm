.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x133e, %rsi
lea addresses_normal_ht+0x5d3e, %rdi
nop
nop
nop
cmp $7604, %rbp
mov $124, %rcx
rep movsw
nop
nop
nop
dec %r8
lea addresses_A_ht+0x4e7e, %rbx
sub $57434, %r14
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
xor $49021, %rcx
lea addresses_A_ht+0xe569, %rcx
nop
nop
nop
cmp $12249, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add $63136, %r8
lea addresses_WT_ht+0xdede, %rcx
nop
nop
nop
cmp $36406, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rcx
movntdq %xmm5, (%rcx)
dec %rbp
lea addresses_WC_ht+0x1173e, %rsi
lea addresses_D_ht+0x131d2, %rdi
nop
nop
xor $30343, %r9
mov $73, %rcx
rep movsq
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x1653e, %rsi
lea addresses_D_ht+0x233e, %rdi
nop
nop
nop
nop
nop
and $56197, %r14
mov $64, %rcx
rep movsl
nop
nop
nop
nop
xor $42019, %rcx
lea addresses_WT_ht+0x5d3e, %r8
clflush (%r8)
nop
add %rsi, %rsi
mov (%r8), %rbp
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x1ad3e, %rsi
lea addresses_A_ht+0x1bcb6, %rdi
nop
add %r14, %r14
mov $45, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1609e, %rsi
lea addresses_UC_ht+0x1cd3e, %rdi
nop
cmp %r9, %r9
mov $56, %rcx
rep movsl
nop
xor %r9, %r9
lea addresses_WC_ht+0xb7e, %rsi
lea addresses_A_ht+0xf98, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $62, %rcx
rep movsq
nop
nop
nop
nop
xor $16447, %r9
lea addresses_WT_ht+0x17443, %rdi
nop
nop
nop
nop
nop
sub $28457, %r9
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %r8
cmp %r9, %r9
lea addresses_WC_ht+0xd63e, %rbp
nop
xor %rbx, %rbx
movl $0x61626364, (%rbp)
nop
nop
sub $47361, %rcx
lea addresses_normal_ht+0x3a3b, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $17282, %r8
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
xor $47346, %rcx
lea addresses_WT_ht+0xdebe, %rsi
lea addresses_WC_ht+0x165b2, %rdi
nop
nop
nop
nop
dec %r8
mov $64, %rcx
rep movsw
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x13e, %rsi
mov $0x705b5c0000000a7a, %rdi
nop
nop
nop
nop
inc %r14
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx

// Load
lea addresses_PSE+0x1947e, %r11
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%r11), %r10b
nop
nop
nop
nop
nop
sub $62997, %r10

// Faulty Load
lea addresses_normal+0x1b53e, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r9), %r14w
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_P'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
