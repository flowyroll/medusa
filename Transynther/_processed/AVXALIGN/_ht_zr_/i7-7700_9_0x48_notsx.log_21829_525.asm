.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9299, %rsi
lea addresses_WC_ht+0x4a99, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $32, %rcx
rep movsb
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xd919, %r11
nop
nop
nop
nop
add %rbx, %rbx
movb (%r11), %cl
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x18299, %rsi
lea addresses_D_ht+0x72fb, %rdi
clflush (%rsi)
dec %r13
mov $56, %rcx
rep movsq
nop
add $50998, %rsi
lea addresses_UC_ht+0xf77, %rcx
cmp $55150, %rdi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
xor $23035, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_PSE+0x14459, %r9
inc %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_UC+0x1a99, %rdx
nop
dec %rax
movntdqa (%rdx), %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'48': 11687, '47': 347, '44': 1573, '00': 8222}
00 00 48 48 00 48 48 00 48 44 48 44 48 48 00 48 00 48 00 48 48 00 44 48 48 00 48 00 00 48 00 00 00 48 48 48 44 48 48 44 00 48 00 00 48 48 48 48 00 00 00 00 48 00 44 48 48 00 48 00 00 48 48 48 44 00 48 48 48 00 48 00 44 44 48 00 00 48 44 48 00 48 00 48 00 48 48 00 48 48 00 00 48 00 48 00 48 48 48 00 48 48 00 48 00 00 44 48 00 00 48 48 44 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 48 48 00 00 48 00 00 48 00 00 00 48 48 48 00 48 00 00 48 44 48 00 00 00 00 48 00 48 00 00 48 00 00 44 00 44 48 48 00 48 48 48 00 00 00 48 00 48 00 48 48 48 00 48 48 00 48 48 00 44 48 48 48 00 48 48 00 00 48 48 48 48 00 48 00 00 48 00 48 48 00 48 00 48 00 48 00 48 48 00 48 48 48 00 44 44 00 48 48 00 00 48 48 48 48 48 48 48 44 00 48 48 48 48 48 44 00 48 48 47 00 48 00 00 00 00 48 00 00 47 44 00 44 00 48 48 48 48 48 48 44 48 00 00 00 44 48 48 00 48 00 48 48 44 00 48 00 00 00 48 48 48 48 00 48 47 48 00 00 44 48 00 48 00 00 48 48 48 48 48 48 00 48 44 00 48 48 48 44 00 00 48 44 48 00 00 00 48 00 44 48 00 48 48 00 48 48 48 48 48 48 00 48 47 48 48 48 00 48 48 00 00 44 00 48 00 44 48 00 47 48 48 00 00 44 00 00 00 48 48 00 48 48 00 48 00 00 48 48 00 00 00 00 47 48 48 48 48 48 48 48 44 48 47 48 48 00 48 44 48 48 00 00 48 48 47 48 48 48 48 00 48 48 48 00 48 48 00 00 48 00 48 48 00 00 48 44 00 48 48 48 48 00 48 00 48 44 00 00 44 48 48 48 44 00 00 00 48 00 48 48 00 00 48 48 00 48 48 00 00 48 00 48 48 00 00 48 48 48 48 00 48 48 48 48 48 00 00 48 44 48 48 00 48 00 48 00 48 00 48 00 47 48 00 48 48 48 00 00 48 00 44 00 00 00 00 48 48 00 00 48 48 48 48 48 47 48 48 48 48 48 00 00 48 48 48 48 00 48 00 48 48 00 00 00 00 00 48 48 48 48 00 48 48 48 00 00 00 00 44 48 48 48 48 48 00 48 44 48 00 48 00 48 44 44 48 00 00 44 44 48 48 48 44 00 44 48 48 00 48 00 48 44 00 00 00 48 48 00 48 00 48 00 44 00 00 44 48 48 00 00 00 48 00 00 00 00 00 48 48 00 48 48 00 00 48 00 48 48 48 00 47 48 48 00 00 48 00 48 48 44 48 48 00 48 47 48 00 48 48 48 00 00 48 00 00 00 00 48 44 48 48 48 44 48 00 48 00 00 48 00 00 00 48 48 48 00 48 00 48 48 48 47 48 00 00 00 00 48 48 00 00 00 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 44 00 48 00 00 00 00 00 00 00 48 00 00 44 44 48 00 48 00 48 48 48 00 48 00 00 00 48 48 48 48 48 48 48 00 48 00 48 44 00 48 00 48 00 00 48 48 44 44 00 48 00 48 48 48 44 48 00 48 00 48 00 44 48 44 44 48 48 00 48 48 48 48 48 48 48 00 00 44 48 48 48 00 48 48 48 00 48 47 48 48 00 48 00 48 48 48 00 48 00 48 44 00 00 00 00 48 00 48 48 48 48 48 48 48 00 48 44 48 48 44 48 44 48 00 48 00 00 00 00 48 00 00 48 48 48 00 48 00 00 48 00 00 44 00 48 48 48 48 00 48 00 48 00 00 48 48 00 44 48 48 48 00 00 00 48 00 44 47 48 48 00 48 00 48 48 00 48 48 00 00 00 48 48 48 00 48 00 48 44 00 48 48 00 00 00 48 48 00 00 00 48 48 48 00 48 00 00 44 00 48 00 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 00 00 48 00 00 48 00 00 48 00 00 48 48 48 48 48 48 00 00 44 48 00 48 00 48 44 48 00 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 00 00 00 48 48 48 48 48 00 00 00 48 00 48 48 00 48 00 48 48 00 48 48 48 00 48 00 00 48 48 47 48 48
*/
