.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe04e, %rsi
lea addresses_A_ht+0x103e7, %rdi
nop
nop
nop
add $16212, %r8
mov $49, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xac2b, %rbx
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rbx)
nop
inc %rcx
lea addresses_D_ht+0x16737, %rcx
nop
nop
nop
add $62174, %r9
movb (%rcx), %bl
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x18147, %r8
nop
nop
nop
nop
and %rsi, %rsi
mov (%r8), %rdi
nop
nop
sub $22630, %rax
lea addresses_UC_ht+0x13e7, %rcx
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%rcx)
nop
nop
nop
dec %rax
lea addresses_A_ht+0x11fe7, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov (%rdi), %eax
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x14f7, %rbx
inc %rax
movb (%rbx), %r9b
nop
nop
add $32514, %rdi
lea addresses_WC_ht+0xfe7, %rsi
lea addresses_UC_ht+0xf7e7, %rdi
nop
nop
nop
nop
and $20294, %r11
mov $83, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xdce7, %rsi
lea addresses_UC_ht+0x620e, %rdi
nop
nop
nop
add $25207, %r9
mov $13, %rcx
rep movsl
and $53117, %rax
lea addresses_WT_ht+0x33c7, %rsi
lea addresses_UC_ht+0x3157, %rdi
clflush (%rdi)
nop
xor $21520, %r9
mov $36, %rcx
rep movsw
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x4017, %r13
nop
nop
inc %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
sub %rdx, %rdx

// Store
lea addresses_A+0x17b7, %rbp
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbp)
nop
xor %r10, %r10

// Store
mov $0x5e9b4f0000000fe7, %r13
nop
xor $2389, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
sub %r10, %r10

// Store
mov $0x3e10190000000c65, %rdi
nop
nop
nop
sub $9936, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rdi)
nop
sub $22106, %r11

// Store
lea addresses_WC+0x18176, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
sub $26541, %r11

// Faulty Load
mov $0x5e9b4f0000000fe7, %rbp
nop
xor $38809, %rdi
movb (%rbp), %r13b
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'e0': 1, '58': 21647, '00': 181}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
