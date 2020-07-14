.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2188, %r12
nop
nop
nop
nop
nop
sub $46472, %r14
mov (%r12), %r10
and $59895, %r12
lea addresses_UC_ht+0x18038, %rsi
lea addresses_A_ht+0x1766c, %rdi
nop
nop
nop
nop
nop
cmp $45964, %rbp
mov $110, %rcx
rep movsw
cmp $54274, %r14
lea addresses_A_ht+0xf8f8, %r12
nop
nop
and $28337, %r10
mov (%r12), %cx
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x178f8, %rbp
nop
nop
sub $45347, %r12
movb $0x61, (%rbp)
sub %rdi, %rdi
lea addresses_WC_ht+0x3568, %rsi
clflush (%rsi)
nop
and %r14, %r14
movl $0x61626364, (%rsi)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x414, %rsi
lea addresses_normal_ht+0xc8f8, %rdi
nop
nop
nop
and $6713, %r11
mov $43, %rcx
rep movsw
nop
nop
nop
nop
nop
and $47094, %r10
lea addresses_UC_ht+0x5ec8, %rbp
nop
nop
nop
and %rsi, %rsi
movb (%rbp), %cl
nop
nop
nop
nop
nop
sub $7720, %r11
lea addresses_UC_ht+0x1c5b8, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r14
nop
nop
nop
sub $26396, %rbp
lea addresses_WC_ht+0x368, %rsi
lea addresses_normal_ht+0x178f8, %rdi
nop
nop
nop
nop
nop
and $13945, %rbp
mov $31, %rcx
rep movsl
nop
nop
nop
xor $57247, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_UC+0x1af8, %r8
nop
nop
nop
sub $1510, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movntdq %xmm2, (%r8)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
inc %r14

// Load
mov $0x93d1a0000000c86, %rdi
nop
inc %r14
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r8
nop
and $20192, %r14

// Faulty Load
lea addresses_PSE+0x178f8, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'33': 21}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
