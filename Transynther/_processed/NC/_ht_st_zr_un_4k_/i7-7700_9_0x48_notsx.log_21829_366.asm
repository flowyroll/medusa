.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18b1d, %rsi
lea addresses_UC_ht+0x1d71d, %rdi
nop
sub $44945, %r11
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
and $27644, %rax
lea addresses_A_ht+0x1e1d, %rax
nop
cmp %rbp, %rbp
movl $0x61626364, (%rax)
xor %rsi, %rsi
lea addresses_WT_ht+0x1a81d, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rdi), %ax
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x14e1d, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rdi), %al
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1b4d5, %rdx
nop
sub %rsi, %rsi
movb (%rdx), %al
nop
nop
nop
add $46348, %rdx
lea addresses_UC_ht+0xab1d, %r11
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %r11
movaps %xmm5, (%r11)
nop
and $29260, %rdi
lea addresses_UC_ht+0xe49d, %rdx
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdx)
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x2c99, %rsi
lea addresses_WC_ht+0x1d3ed, %rdi
clflush (%rdi)
nop
nop
add $17223, %r9
mov $11, %rcx
rep movsw
nop
nop
sub $13637, %rcx
lea addresses_A_ht+0x4683, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r9)
inc %rcx
lea addresses_normal_ht+0xc41d, %rsi
lea addresses_WC_ht+0x1b0fd, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $35, %rcx
rep movsw
nop
nop
cmp $23736, %rcx
lea addresses_D_ht+0x299d, %rsi
lea addresses_WC_ht+0x35e6, %rdi
nop
nop
cmp $33595, %rax
mov $39, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x16e1d, %rbx
xor $32205, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
add $10614, %r12

// Faulty Load
mov $0x1a8016000000061d, %r12
and %rbx, %rbx
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'54': 9, '12': 1, '2e': 1, '00': 14, '03': 1, 'be': 1, '3a': 1, '53': 11, 'c2': 1, '60': 13652, 'af': 1, '82': 1, '96': 1, '86': 1, '46': 5589, '9a': 1, '0d': 1, 'b4': 1, '7a': 2, 'd7': 1, 'f6': 1, 'ca': 1, '06': 2536}
00 60 46 06 60 60 60 60 46 46 06 06 60 60 60 60 46 60 46 60 60 60 60 60 60 60 60 60 60 46 60 60 46 60 06 06 60 60 60 46 60 60 60 60 60 60 60 60 46 46 60 06 06 60 60 60 46 60 46 60 46 60 60 46 46 60 60 46 46 60 46 46 46 60 46 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 ca 60 46 06 60 60 46 06 06 06 60 06 06 06 60 60 60 06 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 46 46 06 06 60 60 06 06 06 60 60 06 06 06 60 60 60 60 06 60 60 60 60 60 60 06 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 60 06 60 60 46 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 46 60 46 06 06 60 06 60 60 60 46 60 60 06 46 60 60 60 00 60 60 06 06 60 60 60 46 60 60 60 06 06 06 06 06 06 06 60 60 60 60 60 60 60 46 46 60 60 60 60 60 60 60 60 60 06 60 60 60 06 60 60 46 06 60 60 60 60 60 60 60 06 60 60 60 60 60 60 60 46 46 46 06 46 46 46 86 46 06 60 60 60 46 46 46 60 46 60 06 60 46 06 46 46 60 60 46 60 60 46 60 60 60 60 60 60 60 60 60 60 60 60 46 46 46 46 46 46 46 46 60 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 06 60 60 60 60 06 06 06 60 46 60 60 60 60 60 60 06 60 60 60 60 46 46 60 60 46 60 60 46 60 60 60 60 46 60 60 60 60 46 60 60 46 60 60 46 06 60 60 60 60 46 60 46 60 60 06 06 06 60 60 06 60 06 06 60 60 06 06 06 60 60 60 06 46 46 46 06 06 46 60 60 06 46 46 60 06 46 46 60 60 60 60 60 60 60 60 06 46 60 60 06 06 06 06 06 60 60 06 06 60 06 60 06 06 60 06 06 60 06 60 06 06 46 46 00 46 46 46 60 46 60 60 60 60 60 60 60 60 60 60 06 46 46 60 60 60 60 60 60 06 06 46 46 46 60 60 60 60 60 06 60 60 60 60 46 60 46 60 60 60 60 60 60 06 60 46 60 60 60 06 60 60 60 60 60 60 06 46 60 60 46 46 60 46 60 46 06 60 06 60 60 60 46 46 46 60 46 46 60 60 46 46 46 46 46 60 46 60 46 60 60 60 60 60 60 60 60 60 60 46 60 60 46 46 60 06 60 46 60 60 46 46 60 60 60 06 06 06 46 46 60 60 46 46 46 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 60 06 60 60 60 46 46 60 60 06 60 60 60 60 60 60 60 60 60 06 60 60 46 60 60 46 46 46 60 46 46 60 60 60 60 60 60 60 60 46 46 46 46 60 46 60 60 60 60 46 06 60 60 60 60 60 60 60 46 60 06 60 60 60 60 60 46 46 46 60 46 46 60 60 60 60 60 06 60 60 60 60 60 46 46 60 60 60 60 60 46 46 46 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 06 60 60 60 06 46 46 46 46 60 60 60 60 46 46 46 60 46 60 60 60 60 60 60 60 60 06 60 46 60 60 60 46 46 46 46 46 46 60 46 46 46 60 46 46 60 46 60 60 06 60 60 60 60 60 60 60 60 60 06 60 60 60 60 06 06 06 06 06 60 60 60 60 06 06 46 60 60 60 60 06 60 60 60 06 60 60 46 60 46 60 60 60 60 60 53 60 60 46 60 60 60 46 60 60 60 46 60 46 46 46 46 06 46 46 46 60 46 46 46 60 46 06 46 60 06 06 46 46 46 46 60 60 60 60 60 60 60 60 60 06 06 46 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 46 60 60 60 46 54 60 46 60 60 60 60 60 46 60 60 60 60 60 60 60 60 60 46 60 60 60 46 46 60 46 60 46 60 60 46 46 60 60 06 60 60 46 60 60 60 46 60 60 46 60 60 60 06 60 46 46 60 06 06 60 60 60 60 60 60 06 60 60 60 60 60 60 46 46 46 46 46 46 46 60 46 46 60 60 60 46 60 60 60 46 60 46 60 46 60 60 46 60 46 60 46 60 60 60 60 60
*/
