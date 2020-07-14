.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17408, %r15
nop
nop
nop
nop
nop
sub $44445, %rdx
movb (%r15), %bl
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x588, %r9
nop
nop
nop
nop
cmp $64939, %rbx
movl $0x61626364, (%r9)
nop
nop
nop
nop
cmp $46186, %r10
lea addresses_A_ht+0xd608, %rdx
add $32885, %r8
mov (%rdx), %rbx
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1ad08, %rsi
lea addresses_normal_ht+0x1e4d4, %rdi
nop
nop
mfence
mov $51, %rcx
rep movsq
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0xee88, %r14
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WC+0x1fe08, %rax
nop
nop
nop
nop
nop
and %r11, %r11
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'f2': 676, '06': 2382, '00': 910, '02': 8, '49': 786, 'c5': 135, 'd7': 12, '50': 16920}
00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 02 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 02 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 00 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 02 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 00 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06
*/
