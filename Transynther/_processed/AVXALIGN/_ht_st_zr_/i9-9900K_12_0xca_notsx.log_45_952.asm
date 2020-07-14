.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12cba, %rax
nop
nop
sub $42710, %rbp
movb (%rax), %r11b
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0xdfba, %rsi
lea addresses_WT_ht+0x1e286, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $22106, %rax
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xab3a, %rsi
nop
nop
nop
nop
nop
xor $47617, %r10
movb (%rsi), %al
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x11dba, %rsi
lea addresses_WC_ht+0x42b0, %rdi
nop
nop
nop
nop
nop
cmp $27813, %rdx
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
and $24709, %rcx
lea addresses_WT_ht+0xd5fa, %r10
nop
and %rax, %rax
movb $0x61, (%r10)
nop
nop
nop
nop
cmp $26903, %r11
lea addresses_A_ht+0x49ba, %rsi
lea addresses_normal_ht+0x15eba, %rdi
nop
nop
inc %rdx
mov $43, %rcx
rep movsb
nop
nop
nop
inc %rax
lea addresses_A_ht+0x101ba, %rax
clflush (%rax)
nop
dec %rcx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x62bc, %rdi
nop
nop
inc %rcx
movb (%rdi), %dl
nop
nop
nop
nop
sub $30456, %rdx
lea addresses_WT_ht+0x5bba, %rsi
lea addresses_WT_ht+0x4e02, %rdi
nop
nop
nop
add %r11, %r11
mov $84, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x16aea, %rdx
nop
xor %rsi, %rsi
mov (%rdx), %bp
nop
and $19240, %rax
lea addresses_A_ht+0xd27a, %rdi
nop
nop
nop
inc %rsi
movl $0x61626364, (%rdi)
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x146fa, %rsi
lea addresses_normal_ht+0x121ba, %rdi
nop
and %r10, %r10
mov $13, %rcx
rep movsl
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0xb1ba, %r13
sub $64374, %rcx
mov (%r13), %r11d
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x7dba, %r13
clflush (%r13)
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_PSE+0x1f2b2, %r8
clflush (%r8)
nop
nop
add %rdx, %rdx
movb $0x51, (%r8)
nop
sub %r13, %r13

// REPMOV
lea addresses_WT+0x1874a, %rsi
lea addresses_WT+0x7dba, %rdi
nop
xor %r8, %r8
mov $19, %rcx
rep movsq
nop
nop
nop
sub $46369, %r15

// Store
mov $0x5afe1f0000000131, %rsi
nop
nop
nop
sub $5930, %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_WT+0x7dba, %rdi
nop
nop
nop
add $63820, %rsi
vmovntdqa (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'46': 5, '00': 25, '45': 14, '39': 1}
00 45 00 46 45 00 00 00 00 45 46 00 46 00 45 46 00 00 00 39 00 00 45 00 45 45 00 46 00 45 00 45 00 45 00 45 00 00 45 00 00 45 00 45 00
*/
