.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1664a, %rsi
lea addresses_UC_ht+0x1de0a, %rdi
nop
nop
nop
sub $42024, %r8
mov $48, %rcx
rep movsb
nop
nop
nop
nop
xor $19540, %r11
lea addresses_UC_ht+0xb14a, %r13
nop
nop
nop
nop
mfence
mov (%r13), %rcx
nop
nop
nop
nop
nop
cmp $21469, %rsi
lea addresses_WC_ht+0x65ca, %rax
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x1c9ca, %r13
cmp $55291, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x7b72, %rsi
lea addresses_normal_ht+0xa172, %rdi
dec %rax
mov $82, %rcx
rep movsl
nop
and $51956, %rdi
lea addresses_D_ht+0x9e4a, %rdi
nop
nop
dec %rax
mov (%rdi), %r8
dec %rcx
lea addresses_D_ht+0x3616, %rsi
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
nop
nop
sub $23592, %rdi
lea addresses_UC_ht+0x686a, %rsi
lea addresses_D_ht+0x1064a, %rdi
clflush (%rsi)
nop
add %r9, %r9
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $53202, %rdi
lea addresses_UC_ht+0x2da, %r13
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x2bb6, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and $13027, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r13
movaps %xmm0, (%r13)
nop
nop
dec %rax
lea addresses_WT_ht+0x13b4a, %rsi
lea addresses_UC_ht+0x1ed4a, %rdi
nop
nop
nop
cmp %r9, %r9
mov $109, %rcx
rep movsw
nop
xor $7597, %rdi
lea addresses_UC_ht+0xe24a, %r13
nop
cmp %rcx, %rcx
mov (%r13), %esi
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rdi

// Store
lea addresses_WC+0x12e4a, %r13
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r13)
nop
sub %rbx, %rbx

// Load
lea addresses_A+0x64a, %r10
inc %r8
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r13
cmp %r14, %r14

// Store
mov $0x79bae000000064a, %r10
dec %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
xor $5663, %r11

// Store
mov $0x15f0b50000000b4a, %r8
nop
nop
nop
nop
and $26511, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movaps %xmm4, (%r8)
nop
cmp $21184, %r13

// Store
lea addresses_WC+0x1186d, %r10
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
xor $63306, %r13

// Faulty Load
lea addresses_US+0x1ee4a, %rdi
clflush (%rdi)
nop
and $65313, %rbx
mov (%rdi), %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'51': 203, '00': 2}
00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
