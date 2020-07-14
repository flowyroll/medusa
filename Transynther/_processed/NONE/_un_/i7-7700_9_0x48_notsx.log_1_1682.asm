.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_WC_ht+0x549f, %r11
inc %r9
movups (%r11), %xmm1
vpextrq $1, %xmm1, %r14
inc %rbx
lea addresses_UC_ht+0x15da0, %rsi
nop
nop
inc %rbp
mov (%rsi), %edi
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x12617, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x13157, %rbp
nop
nop
nop
nop
xor $34866, %rsi
movb $0x61, (%rbp)
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x16eff, %r14
clflush (%r14)
add %rsi, %rsi
movb (%r14), %r9b
add $65061, %r11
lea addresses_WT_ht+0xb200, %rbp
add %r14, %r14
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
cmp $60857, %rdi
lea addresses_A_ht+0x16057, %rdi
nop
nop
nop
nop
nop
lfence
mov (%rdi), %r14d
nop
nop
and $37670, %r9
lea addresses_normal_ht+0x17957, %rdi
nop
nop
nop
xor $3697, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
add $5500, %rdi
lea addresses_WC_ht+0x4357, %rdi
nop
nop
add $2116, %r11
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
cmp $3886, %r9
lea addresses_WC_ht+0x1da17, %rsi
nop
nop
nop
cmp $42360, %r11
movl $0x61626364, (%rsi)
nop
nop
add $22401, %r14
lea addresses_WC_ht+0x12a67, %r11
nop
nop
sub $13626, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r11)
nop
add $5693, %r14
lea addresses_UC_ht+0xe57, %r14
sub $56146, %r11
mov (%r14), %ebp
nop
nop
nop
nop
nop
add $3697, %rsi
lea addresses_UC_ht+0xd02d, %r11
nop
nop
xor $15812, %r9
mov (%r11), %bp
nop
nop
nop
nop
nop
xor $32820, %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1d8e7, %rdi
nop
nop
sub $12488, %rdx
movb $0x51, (%rdi)

// Exception!!!
nop
nop
nop
xor %r15, %r15
div %r15
nop
and %rdi, %rdi

// Faulty Load
lea addresses_D+0x1157, %r15
and $12748, %r12
movb (%r15), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'99': 1}
99
*/
