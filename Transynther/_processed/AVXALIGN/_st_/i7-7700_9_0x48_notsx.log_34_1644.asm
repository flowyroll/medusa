.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xaaaf, %rsi
lea addresses_WT_ht+0x512f, %rdi
and %r13, %r13
mov $29, %rcx
rep movsl
nop
nop
and $40669, %r13
lea addresses_D_ht+0xed8f, %r11
nop
nop
nop
nop
nop
xor $230, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x1192f, %rsi
nop
inc %r14
movb $0x61, (%rsi)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x96c7, %r11
nop
nop
add %rsi, %rsi
movw $0x6162, (%r11)
xor %rdi, %rdi
lea addresses_UC_ht+0x6daf, %rdi
nop
nop
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
xor $60449, %rdi
lea addresses_UC_ht+0x188d3, %rsi
lea addresses_WT_ht+0x9f2f, %rdi
nop
nop
inc %r15
mov $55, %rcx
rep movsb
nop
nop
nop
add $26002, %r11
lea addresses_A_ht+0x11ef, %rsi
lea addresses_WC_ht+0xe73f, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $2640, %r11
mov $67, %rcx
rep movsl
nop
nop
sub $19176, %r10
lea addresses_A_ht+0x562f, %rcx
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rcx)
sub %r14, %r14
lea addresses_D_ht+0x872f, %rdi
inc %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
xor $31757, %rsi
lea addresses_WC_ht+0xc52f, %r10
nop
nop
nop
nop
sub $8386, %r15
movl $0x61626364, (%r10)
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x17b1d, %rcx
and %rdi, %rdi
movb $0x61, (%rcx)
dec %rdi
lea addresses_WC_ht+0x1992f, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x1a51cb0000000b27, %r14
nop
add %r11, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x4665640000000a51, %rsi
nop
and %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x8f4e, %rdx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
dec %r14

// Faulty Load
lea addresses_RW+0x1292f, %rdx
cmp %rbx, %rbx
mov (%rdx), %esi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'32': 34}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
