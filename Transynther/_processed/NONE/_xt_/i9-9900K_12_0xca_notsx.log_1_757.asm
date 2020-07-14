.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7a1c, %rsi
lea addresses_A_ht+0x1bb14, %rdi
nop
sub $25853, %r11
mov $71, %rcx
rep movsw
nop
nop
sub $42503, %r13
lea addresses_D_ht+0x1954c, %rsi
lea addresses_UC_ht+0x754c, %rdi
nop
nop
nop
add %r14, %r14
mov $33, %rcx
rep movsb
sub $39264, %r13
lea addresses_WC_ht+0x1954c, %rsi
lea addresses_A_ht+0xf0fc, %rdi
nop
nop
xor %rbp, %rbp
mov $15, %rcx
rep movsw
nop
nop
xor $50819, %rbp
lea addresses_UC_ht+0x1aa3a, %rsi
lea addresses_WT_ht+0xd54c, %rdi
clflush (%rdi)
nop
nop
nop
inc %r11
mov $34, %rcx
rep movsb
nop
mfence
lea addresses_normal_ht+0x140dc, %rcx
nop
nop
nop
nop
nop
inc %rbp
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
sub $39509, %rsi
lea addresses_UC_ht+0x3d26, %rsi
lea addresses_WC_ht+0xc7b4, %rdi
sub %r15, %r15
mov $95, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x654c, %rsi
add $45619, %rcx
mov (%rsi), %r13
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1dd2c, %r11
nop
nop
nop
nop
and $26830, %rbp
mov (%r11), %cx
nop
nop
nop
cmp $64491, %rsi
lea addresses_normal_ht+0x2d4c, %rsi
lea addresses_D_ht+0x16d4c, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $0, %rcx
rep movsl
nop
nop
nop
nop
sub $61716, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi

// Store
mov $0x16e66a000000038c, %r14
nop
nop
nop
nop
cmp $45278, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x614c, %r9
cmp $55956, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r9)
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x1a54c, %r10
nop
nop
nop
nop
sub $18466, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x18d4c, %rdi
nop
nop
nop
nop
nop
sub $40805, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_UC+0x1e988, %r13
sub %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
cmp $8508, %r10

// Load
lea addresses_normal+0x1794c, %rcx
xor $1574, %r10
movb (%rcx), %r11b
sub %r10, %r10

// Faulty Load
lea addresses_normal+0x17d4c, %r10
add $36926, %r11
movb (%r10), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'34': 1}
34
*/
