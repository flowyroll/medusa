.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1dcb, %r14
sub %rdx, %rdx
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
add $16476, %rbp
lea addresses_A_ht+0x1e82f, %rsi
sub %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
xor $63704, %rdx
lea addresses_UC_ht+0x1e03f, %r14
nop
nop
nop
nop
sub %rax, %rax
mov (%r14), %si
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x1587f, %rsi
lea addresses_D_ht+0x17dff, %rdi
clflush (%rsi)
and $10954, %rax
mov $65, %rcx
rep movsq
dec %rax
lea addresses_WT_ht+0x1250b, %rsi
lea addresses_normal_ht+0xa82f, %rdi
nop
nop
dec %rax
mov $117, %rcx
rep movsb
nop
nop
nop
nop
add $61841, %rdx
lea addresses_WT_ht+0x1682f, %rsi
lea addresses_WT_ht+0x1bd2f, %rdi
nop
nop
nop
nop
nop
cmp $18976, %r14
mov $47, %rcx
rep movsq
add $16457, %rax
lea addresses_WT_ht+0x3097, %rax
nop
nop
nop
cmp %rbp, %rbp
movb (%rax), %cl
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Load
mov $0x49099e000000082f, %rcx
nop
nop
nop
add $28489, %r14
movb (%rcx), %dl
and %rcx, %rcx

// Load
lea addresses_PSE+0x1d02f, %rsi
nop
nop
nop
nop
cmp $7622, %rdx
movb (%rsi), %r11b
nop
nop
nop
add %r11, %r11

// Store
lea addresses_UC+0x4d90, %r12
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_WT+0x1aa2f, %rax
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
inc %rax

// Faulty Load
mov $0x49099e000000082f, %rdx
dec %r11
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'00': 420}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
