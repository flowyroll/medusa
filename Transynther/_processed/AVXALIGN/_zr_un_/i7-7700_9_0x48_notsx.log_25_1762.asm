.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xbd3b, %r15
sub %rbp, %rbp
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
add $33845, %r12
lea addresses_WT_ht+0x116fb, %r15
clflush (%r15)
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
xor $58428, %rdi
lea addresses_WC_ht+0x1a582, %rsi
lea addresses_A_ht+0x943b, %rdi
nop
dec %r13
mov $9, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x4fa3, %rsi
lea addresses_WC_ht+0x12e9f, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r15
mov $27, %rcx
rep movsw
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x11fab, %rcx
nop
nop
nop
nop
xor $37606, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rcx)
nop
dec %rbp
lea addresses_UC_ht+0xa9fb, %r13
nop
nop
nop
nop
nop
cmp $43890, %r12
movl $0x61626364, (%r13)
nop
add $63489, %rdi
lea addresses_A_ht+0xbf03, %rsi
lea addresses_D_ht+0x19e82, %rdi
xor $2006, %rdx
mov $48, %rcx
rep movsw
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1b1bb, %rdi
nop
cmp $32503, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1d63b, %rsi
lea addresses_WC_ht+0x56f3, %rdi
xor $7765, %r13
mov $116, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x4e7b, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $16636, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x4c23, %r13
nop
nop
xor $23106, %r12
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1e43b, %rdx
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rdx
movntdq %xmm3, (%rdx)
nop
add $56120, %rcx
lea addresses_A_ht+0xe73b, %rdx
nop
add %r13, %r13
mov (%rdx), %rbp
add %rbp, %rbp
lea addresses_D_ht+0xfe3b, %rdx
nop
inc %r15
movb (%rdx), %r12b
sub %r15, %r15
lea addresses_WT_ht+0xca77, %rsi
lea addresses_UC_ht+0x11c3b, %rdi
nop
add $46672, %r15
mov $68, %rcx
rep movsb
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x13ebb, %r15
nop
nop
add $45391, %rsi
movw $0x5152, (%r15)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1ba8f, %rsi
nop
nop
nop
nop
nop
inc %rdi
movb $0x51, (%rsi)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x2e3b, %r13
nop
nop
add %r11, %r11
movb $0x51, (%r13)
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0x16c3b, %r13
sub $37221, %rdi
mov (%r13), %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'00': 9, 'f0': 16}
f0 f0 f0 00 f0 00 f0 00 f0 00 00 f0 00 f0 f0 f0 f0 00 f0 f0 00 00 f0 f0 f0
*/
